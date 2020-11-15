SEASMTEST_FILES := $(patsubst %.test.seasm,%.test,$(wildcard *.test.seasm))
SEASMTEST_ROMFILES := $(patsubst %.test.seasm,%.test.rom,$(wildcard *.test.seasm))

ASMTEST_FILES := $(patsubst %.test.s,%.test,$(wildcard *.test.s))
ASMTEST_ROMFILES := $(patsubst %.test.s,%.test.rom,$(wildcard *.test.s))

all: $(ASMTEST_FILES) $(SEASMTEST_FILES)

clean:
	rm -f $(ASMTEST_FILES) $(ASMTEST_ROMFILES) $(SEASMTEST_FILES) $(SEASMTEST_ROMFILES)

%.test: %.test.s
	../../utils/buildtest.rb $< $@

%.test: %.test.seasm
	../../utils/seasm.rb ../complete_microcode.def $< > $@

%.test.rom: %.test
	../../utils/asciitobin.rb $<
