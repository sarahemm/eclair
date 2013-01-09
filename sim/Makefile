OBJS=mc_eprom.v main_eprom.v mc_ram.v main_ram.v counter.v flipflop_jk.v flipflop_d.v mux_18.v mux_21.v mux_28.v mux_88.v demux_38.v latch.v clag_4.v alu_4.v alu_16.v eclair.v

all: eclair.vvp microcode

run: eclair.vvp microcode
	./eclair.vvp
	
test: eclair.vvp microcode
	../utils/runtests.rb

eclair.vvp: $(OBJS)
	iverilog -o eclair.vvp -Wall $(OBJS)

microcode: microcode.bin

microcode.bin: ../doc/microcode.txt ../utils/mcgen.rb
	../utils/mcgen.rb ../doc/microcode.txt

clean:
	rm -f *.vvp *.vcd a.out microcode*.bin sysrom.bin
