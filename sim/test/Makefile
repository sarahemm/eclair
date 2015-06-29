ASMTEST_FILES := $(patsubst %.test.seasm,%.test,$(wildcard *.test.seasm))

all: $(ASMTEST_FILES)

clean:
	rm -f $(ASMTEST_FILES)

%.test: %.test.seasm
	../../utils/seasm.rb ../../doc/microcode.txt $< > $@

