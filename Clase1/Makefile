
GHDLghdl
FLAGS="--std=08"

all:
	@$(GHDL) -a $(FLAGS) e1.vhd
	@$(GHDL) -e $(FLAGS) e1
	@$(GHDL) -r $(FLAGS) e1 --wave=wave.ghw --stop -time=1us