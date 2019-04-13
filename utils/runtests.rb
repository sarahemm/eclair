#!/opt/local/bin/ruby1.9
# runtests - run all the unit tests found in sim/test/*

require 'colorize'

class Issue
  attr_reader :pc, :details
  
  def initialize(pc, details)
    @pc = pc
    @details = details
  end
end

class Problem < Issue
end

class Failure < Issue
end

def bit_compare(a, b)
  # compare a and b, understanding that 'X' means ignore the bit position in the other one
  (0..(a.length-1)).each do |char_idx|
    return false unless (a[char_idx] == b[char_idx]) || a[char_idx] == "X" || b[char_idx] == "X"
  end
  true
end

def run_test(filename)
  puts "\nTEST:    #{File.basename(filename).gsub(".test", "")}".light_green
  # find all the expects and put them into an array of arrays
  # expects[pc after which tests are run][register]
  expects = Array.new
  File.open(filename, "r") do |infile|
    addr = nil
    addr_set_last = false
    infile.each_line do |line|
      if(matches = line.match(/expect:\s*([^=]+)=(.*)/)) then
        # expect line, record it in the array
        expects[addr][matches[1]] = matches[2]
      elsif(matches = line.match(/^@([0-9A-Fa-f]+)$/)) then
        # new address where ppc=pc
        addr = matches[1].to_i(16)
        expects[addr] = Hash.new
        addr_set_last = true
      elsif(matches = line.match(/^@([0-9A-Fa-f]+)\s*\/\/\s*pc:\s*([0-9A-Fa-f]+)$/)) then
        # new address where ppc and pc are specified separately
        addr = matches[2].to_i(16)
        expects[addr] = Hash.new
        addr_set_last = true
      elsif(line.match(/^[01]{8}/)) then
        # instruction, increment address by 1
        if(addr_set_last) then
          # the last thing we found was an address set
          # this instruction /is/ that address, so don't increment addr
          addr_set_last = false
          next
        end
        addr += 1
        expects[addr] = Hash.new
      end
    end
  end
  
  # the simulator loads sysrom.bin into ROM at start, so link that to the test
  File.symlink filename, "../sim/sysrom.bin"
  
  # run the test, capturing the output
  stdout = ""
  sim_io = IO.popen("../sim/eclair.vvp")
  while(!sim_io.eof?) do
    stdout += sim_io.readlines.join
  end
  File.unlink "../sim/sysrom.bin"
  
  # read the log and store all the register values
  # register results are stored only for the last cycle at each pc
  # RAM changes are output as they happen
  results = Hash.new
  last_pc = 0
  cs_loaded = false
  ram_contents = Hash.new;
  cs_contents = Hash.new;
  stdout.each_line do |out_line|
    #if(out_line =~ /^\s*$/) then
    #  puts "Cycle at PC #{last_pc} is complete."
    #end
    if(reg_val = out_line.match(/(\S+):\s*(\S+)/)) then
      if(reg_val[1] == "pc") then
        last_pc = reg_val[2].to_i(16)        
        results[last_pc] = Hash.new if !results[last_pc]
        # the simulator doesn't report RAM contents on each pc change, so add them in from our local copy
        ram_contents.each do |addr, data|
          results[last_pc]["ram[0x#{addr.to_s(16)}]"] = "0x#{data.to_s(16)}"
        end
        cs_contents.each do |addr, data|
          results[last_pc]["cs[0x#{addr.to_s(16)}]"] = "0x#{data.to_s(16)}"
        end
      end
      results[last_pc] = Hash.new if !results[last_pc]
      results[last_pc][reg_val[1]] = reg_val[2]
    elsif(reg_val = out_line.match(/(Main|Control store) RAM wrote data [01XZxz]+ \((\S+)\) to address [01XZxz]+ \((\S+)\)/)) then
      ram_type = reg_val[1]
      data = reg_val[2].to_i(16)
      addr = reg_val[3].to_i(16)
      case ram_type
        when "Main"
          # ram starts at 0x100000, writes are reported as offset into ram
          addr += 0x100000
          ram_contents[addr] = data
          results[last_pc] = Hash.new if !results[last_pc]
          results[last_pc]["ram[0x#{addr.to_s(16)}]"] = "0x#{data.to_s(16)}"
        when "Control store"
          next if !cs_loaded  # only save control store state once we've completed the power-on load
          cs_contents[addr] = data
          results[last_pc] = Hash.new if !results[last_pc]
          results[last_pc]["cs[0x#{addr.to_s(16)}]"] = "0x#{data.to_s(16)}"
      end
      #puts "results[0x#{last_pc.to_s(16)}][ram[0x#{addr.to_s(16)}]]"
      #puts "Found a #{ram_type} RAM write of data 0x#{data.to_s(16)} to address 0x#{addr.to_s(16)} at pc #{last_pc}"
    elsif(out_line.match(/^Microcode loaded from ROM to RAM/)) then
      cs_loaded = true
    end
  end
  
  # check each register to make sure it matches what we think it should
  fails = Array.new
  problems = Array.new
  pass = last_pc = 0
  expects.each_index do |addr|
    next if !expects[addr] or expects[addr].length == 0
    puts "ADDR:    Running tests for PC 0x#{addr.to_s(16).upcase}"
    expects[addr].each do |reg, val|
      if(results[addr] == nil) then
        problems.push Problem.new(addr, "Simulator did not report any values")
        puts "PROBLEM: Simulator did not report any values at PC 0x#{addr.to_s(16).upcase}".light_yellow
        next
      end
      if(results[addr][reg] == nil) then
        problems.push Problem.new(addr, "Simulator did not report value of register '#{reg}'")
        puts "PROBLEM: Simulator did not report value of register '#{reg}'".light_yellow
        next
      end
      if(bit_compare(results[addr][reg], val))
        pass += 1
        puts "PASS:    #{reg} is #{results[addr][reg]}".light_green
      else
        fails.push Failure.new(addr, "#{reg} should be #{val} but was #{results[addr][reg]}")
        puts "FAIL:    #{reg} should be #{val} but was #{results[addr][reg]}".light_red
      end
    end
  end
  
  # make sure the processor halted at the end, or that's a failure
  if(stdout.split(/\n/)[-1] == "PROCESSOR HALTED") then
    pass += 1
    puts "PASS:    Processor halted successfully.".light_green
  elsif(stdout.split(/\n/)[-1] =~ /ILLEGAL MICROINSTRUCTION EXECUTED.*/) then
    fails.push Failure.new(nil, "Illegal microinstruction executed.")
    puts "FAIL:    Illegal microinstruction executed.".light_red
  else
    fails.push Failure.new(nil, "Processor ran away and failed to halt.")
    puts "FAIL:    Processor ran away and failed to halt.".light_red
  end
  
  return fails, problems, pass
end

filespec = nil
if(ARGV[0]) then
  filespec = ARGV[0]
else
  filespec = "../sim/test/*.test"
end

total_fails = total_problems = total_pass = 0
all_fails = Hash.new
all_problems = Hash.new
Dir.glob(filespec) do |test_file|
  test_name = File.basename(test_file).gsub(".test", "")

  test_fails, test_problems, test_pass = run_test(test_file)

  total_fails += test_fails.length
  total_problems += test_problems.length

  all_problems[test_name] = test_problems
  all_fails[test_name] = test_fails

  total_pass += test_pass
end

puts
print "TOTALS:  #{total_pass} tests passed, ".light_green
print "#{total_problems} tests had a problem, ".light_yellow
print "and #{total_fails} tests failed.\n".light_red

if(total_problems + total_fails != 0 and Dir.glob(filespec).length > 1) then
  puts "\nIssue Summary:"
  all_problems.each do |test_name, issues|
    issues.each do |issue|
      if(issue.pc) then
        puts "#{test_name} @ PC 0x#{issue.pc.to_s(16)}: #{issue.details}".light_yellow
      else
        puts "#{test_name}: #{issue.details}".light_yellow
      end
    end
  end
  all_fails.each do |test_name, issues|
    issues.each do |issue|
      if(issue.pc) then
        puts "#{test_name} @ PC 0x#{issue.pc.to_s(16)}: #{issue.details}".light_red
      else
        puts "#{test_name}: #{issue.details}".light_red
      end
    end
  end
elsif(total_problems + total_fails == 0) then
  puts "\nALL TESTS SUCCESSFUL".light_cyan
end
