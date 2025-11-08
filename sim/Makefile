OBJS=mc_eprom.v main_eprom.v mc_ram.v main_ram.v counter.v flipflop_jk.v flipflop_d.v mux_18.v mux_21.v mux_2x.v mux_94.v demux_38.v latch.v clag_4.v alu_4.v alu_16.v prienc_8.v decoder_8.v updowncounter.v andgate.v shiftreg.v magcomp.v eclair.v

OBJS_NORMAL_HARNESS=$(OBJS) test_harness.v
OBJS_INT_HARNESS=$(OBJS) test_harness-int.v
OBJS_DMA_HARNESS=$(OBJS) test_harness-dma.v

VVPS=eclair-test.vvp eclair-test-int.vvp eclair-test-dma.vvp

all: $(VVPS) microcode

run: $(VVPS) microcode
	./eclair.vvp
	
unit_tests: $(VVPS) microcode
	make -C unit_tests
	../utils/runtests.rb 'unit_tests/*.test'

integration_tests: $(VVPS) microcode
	make -C integration_tests
	../utils/runtests.rb 'integration_tests/*.test'

test: $(VVPS) microcode
	make -C unit_tests
	make -C integration_tests
	../utils/runtests.rb

eclair.vvp: $(OBJS)
	iverilog -o $@ -Wall $(OBJS)

eclair-test.vvp: $(OBJS_NORMAL_HARNESS)
	iverilog -o $@ -Wall $(OBJS_NORMAL_HARNESS)

eclair-test-int.vvp: $(OBJS_INT_HARNESS)
	iverilog -o $@ -Wall $(OBJS_INT_HARNESS)

eclair-test-dma.vvp: $(OBJS_DMA_HARNESS)
	iverilog -o $@ -Wall $(OBJS_DMA_HARNESS)

microcode: microcode.bin

microcode.bin: ../microcode/*.def ../utils/mcgen/mcgen2
	../utils/mcgen/mcgen2 ../microcode/microcode.def

clean:
	rm -f *.vvp *.vcd a.out microcode*.bin microcode_map.txt microcode_graph.pdf complete_microcode.def sysrom.bin
	make -C unit_tests clean
