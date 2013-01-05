#!/opt/local/bin/ruby1.9
# runtests - run all the unit tests found in sim/test/*

require 'colorize'

def run_test(filename)
  puts "TEST:    #{File.basename(filename).gsub(".test", "")}".light_white
  # find all the expects and put them into an array
  expects = Array.new
  File.open(filename, "r") do |infile|
    infile.each_line do |line|
      next if !expect = line.match(/expect:\s*([^=]+)=(.*)/)
      expects << {:register => expect[1], :value => expect[2]}
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
  
  # check each register to make sure it matches what we think it should
  fails = problems = pass = 0
  expects.each do |expect|
    last_val = nil
    stdout.each_line do |out_line|
      next if !reg_val = out_line.match(/(\S+):\s*(\S+)/)
      last_val = reg_val[2] if reg_val[1] == expect[:register]
    end
    if(last_val == nil) then
      problems += 1
      puts "PROBLEM: Simulator did not report value of register '#{expect[:register]}'.".light_yellow
      next
    end
    if(last_val == expect[:value]) then
      pass += 1
      puts "PASS:    #{expect[:register]} is #{expect[:value]}".light_green
    else
      fails += 1
      puts "FAIL:    #{expect[:register]} should be #{expect[:value]} but was #{last_val}".light_red
    end
  end
  
  # make sure the processor halted at the end, or that's a failure
  if(stdout.split(/\n/)[-1] == "PROCESSOR HALTED") then
    pass += 1
    puts "PASS:    Processor halted successfully.".light_green
  else
    fails += 1
    puts "FAIL:    Processor ran away and failed to halt.".light_red
  end
  
  #if(fails + problems > 0) then
  #  puts stdout
  #end
  
  return fails, problems, pass
end

total_fails = total_problems = total_pass = 0
Dir.glob("../sim/test/*.test") do |test_file|
  test_fails, test_problems, test_pass = run_test(test_file)
  total_fails += test_fails
  total_problems += test_problems
  total_pass += test_pass
end

puts
print "TOTALS:  #{total_pass} tests passed, ".light_green
print "#{total_problems} tests had a problem, ".light_yellow
print "and #{total_fails} tests failed.\n".light_red

puts "\nALL TESTS SUCCESSFUL".light_cyan if total_problems + total_fails == 0

