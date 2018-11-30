ivlsim:
	iverilog -g2005 -f ./list.f -o ivlsim

ivlsim_run: ivlsim
	vvp ivlsim

vcdwave:
	iverilog -g2005 -f ./list.f -D VCD -o ivlsim ; vvp ivlsim

simv:
	vcs -full64 -f ./list.f -debug_access+all -o simv

simv_run:
	./simv

fsdb:
	vcs -full64 -f ./list.f +define+FSDB -debug_access+all -o simv-fsdb

verdi: fsdb
	./simv-fsdb
	verdi -f ./list.f -ssf ./wave.fsdb

.PHONY: clean
clean:
	rm -rf ./csrc ./novas* ./simv* ./verdi* ./*.fsdb ./ucli.key ./ivlsim ./*.vcd
