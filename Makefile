.PHONY: pbm
pbm: src/*.djvu
	@mkdir -p pbm
	ddjvu -format=pbm -eachpage -1 $< pbm/out_%03d.pbm

.PHONY: clean
clean:
	rm -rf pbm/
