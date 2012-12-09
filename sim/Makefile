OBJS=mc_eprom.v main_eprom.v mc_ram.v main_ram.v counter.v flipflop_jk.v mux_21.v mux_28.v mux_88.v demux_38.v latch.v alu.v eclair.v

all: eclair.vvp microcode.bin

run: eclair.vvp
	./eclair.vvp

eclair.vvp: $(OBJS)
	iverilog -o eclair.vvp -Wall $(OBJS)

microcode.bin: ../doc/microcode.txt
	../utils/mcgen.rb ../doc/microcode.txt > microcode.bin

clean:
	rm -f *.vvp a.out microcode.bin
