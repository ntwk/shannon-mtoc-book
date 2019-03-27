PBMDIR = pbm

.PHONY: pbm
pbm: src/*.djvu
	@mkdir -p $(PBMDIR)
	script/djvutopbm.sh $< $(PBMDIR)

.PHONY: clean
clean:
	rm -rf $(PBMDIR)
