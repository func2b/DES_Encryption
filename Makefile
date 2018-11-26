simv:
	vcs -full64 -f ./list.f -debug_access+all
verdi: simv
	./simv
	verdi -f ./list.f -ssf ./wave.fsdb
clean:
	rm -rf ./csrc ./novas* ./simv* ./verdi* ./*.fsdb ./ucli.key
