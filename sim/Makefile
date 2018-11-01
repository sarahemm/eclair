OBJS=mc_eprom.v main_eprom.v mc_ram.v main_ram.v counter.v flipflop_jk.v flipflop_d.v mux_18.v mux_21.v mux_2x.v demux_38.v latch.v clag_4.v alu_4.v alu_16.v prienc_8.v decoder_8.v updowncounter.v andgate.v shiftreg.v magcomp.v eclair.v test_harness.v

all: eclair.vvp microcode

run: eclair.vvp microcode
	./eclair.vvp
	
test: eclair.vvp microcode
	make -C test
	../utils/runtests.rb

eclair.vvp: $(OBJS)
	iverilog -o eclair.vvp -Wall $(OBJS)

microcode: microcode.bin

microcode.bin: ../microcode/*.def ../utils/mcgen.rb
	../utils/mcgen.rb ../microcode/microcode.def

clean:
	rm -f *.vvp *.vcd a.out microcode*.bin microcode_map.txt microcode_graph.pdf complete_microcode.def sysrom.bin
	make -C test clean
