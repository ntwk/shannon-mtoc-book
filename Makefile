.PHONY: pbm
pbm: src/*.djvu
	@mkdir -p pbm
	script/djvutopbm.sh $< pbm

.PHONY: clean
clean:
	rm -rf pbm/
