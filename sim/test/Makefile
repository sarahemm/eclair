ASMTEST_FILES := $(patsubst %.test.seasm,%.test,$(wildcard *.test.seasm))
ASMTEST_ROMFILES := $(patsubst %.test.seasm,%.test.rom,$(wildcard *.test.seasm))

all: $(ASMTEST_FILES)

clean:
	rm -f $(ASMTEST_FILES) $(ASMTEST_ROMFILES)

%.test: %.test.seasm
	../../utils/seasm.rb ../complete_microcode.def $< > $@

%.test.rom: %.test
	../../utils/asciitobin.rb $<
