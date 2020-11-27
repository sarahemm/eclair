ASMTEST_FILES := $(patsubst %.test.s,%.test,$(wildcard *.test.s))
ASMTEST_ROMFILES := $(patsubst %.test.s,%.test.rom,$(wildcard *.test.s))

all: $(ASMTEST_FILES)

clean:
	rm -f $(ASMTEST_FILES) $(ASMTEST_ROMFILES) 

disassembler-test:
	set -o errexit; \
	for ASMFILE in `ls *.s`; do \
		echo "Testing disassembly of $$ASMFILE..." ; \
		../../utils/disasmtest.rb $$ASMFILE ; \
	done

%.test: %.test.s
	../../utils/buildtest.rb $< $@

%.test.rom: %.test
	../../utils/asciitobin.rb $<
