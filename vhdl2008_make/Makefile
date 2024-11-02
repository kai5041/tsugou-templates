SRC := $(wildcard src/*.vhd)
TBS := $(wildcard tests/*.vhd)
TB_NAMES := $(patsubst tests/%.vhd,%,$(TBS))

all: test

compile: $(SRC)
	ghdl -a --std=08 $(SRC) 

test: compile $(TBS)
	ghdl -a --std=08 $(TBS)

	@ for tb in $(TB_NAMES); do \
		ghdl -e --std=08 $$tb;    \
		ghdl -r --std=08 $$tb; 		\
	done


clean:
	@ rm -f *.o *.cf
	@ for tb in $(TB_NAMES); do rm -f $$tb; done
