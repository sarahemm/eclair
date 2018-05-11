#!/usr/bin/ruby
# pagecalc - calculate the number to put in the page table to get a certain base physical address
# this is slightly ridiculous since it's really just base_addr >> 10, but I kept forgetting what the conversion was
# so this makes life a little bit simpler.
if(ARGV.length != 1) then
  puts "usage: #{$0} page_base_addr"
  Kernel.exit 1
end

base_addr = ARGV[0]
base_addr = base_addr.to_i(16) if /^0x/.match(base_addr)
if(base_addr.to_s(2)[-10..-1] != "0000000000") then
  puts "ERROR: Base address must have the 10 lowest signficance bits as zero."
  Kernel.exit 2
end
page_entry = base_addr >> 10
page_entry_bin = page_entry.to_s(2).rjust(14, '0')
page_entry_hex = page_entry.to_s(16)

puts "Page Entry: #{base_addr} 0x#{page_entry_hex} 0b#{page_entry_bin}"