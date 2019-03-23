.PHONY: pbm
pbm: src/*.djvu
	@mkdir -p pbm
	ddjvu -format=pbm -eachpage -1 $< pbm/page_%03d.pbm

.PHONY: clean
clean:
	rm -rf pbm/
