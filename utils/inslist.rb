#!/usr/bin/ruby
# inslist - show a summary of all supported instructions, generated from microcode.txt
last_comment = ""
last_line_comment = false
last_instruction = ""
File.open(ARGV[0], "r") do |infile|
  infile.each_line do |line|
    if comment = line.match(/\s*#\s*(.*)/) then
      # only grab the first line of a block of comments
      # the first line describes the instruction, the next lines describe that specific step
      last_comment = comment[1] if !last_line_comment
      last_line_comment = true;
    else
      last_line_comment = false;
    end
    line.gsub! /#.*/, ""
    values = line.split(/\s+/)
    next if values[0] == nil
    case values.shift
      when "instruction" then
        # instructions list which values need to be set for each row of an instruction
        instruction = values.shift
        next if instruction == last_instruction
        if(register = instruction.match(/\.(.*)/)) then
          puts "#{instruction.ljust(12)} #{last_comment.gsub(/supplied register/, "register #{register[1].upcase}")}"
        else
          puts "#{instruction.ljust(12)} #{last_comment}"
        end
        last_instruction = instruction
    end
  end
end
