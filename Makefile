default:
	vcs -full64 -f ./list.f -debug_access+all
verdi:
	vcs -full64 -f ./list.f -debug_access+all
	./simv
	verdi -f ./list.f -ssf ./wave.fsdb
clean:
	rm -rf ./csrc ./novas* ./simv* ./verdi* ./*.fsdb ./ucli.key
