TMP_FILES = tmp.out
CFLAGS += -O0 -g
CTARGETS = hello end size tmp test
ASMTARGETS = data.o j jt lteo mul mulopt printft

all: $(CTARGETS) $(ASMTARGETS)

jt: jt.o util.o

clean:
	rm -f ?tmp $(TMP_FILES) $(CTARGETS) $(ASMTARGETS) *.o
