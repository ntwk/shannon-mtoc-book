PBMDIR = pbm

book.pdf: src/*.djvu pbm
	script/preprocess.sh < src/transforms.in | script/crop.sh $(PBMDIR)
	script/pbmtopdf.pl

.PHONY: pbm
pbm: src/*.djvu
	@mkdir -p $(PBMDIR)
	script/djvutopbm.sh $< $(PBMDIR)

.PHONY: clean
clean:
	rm -rf $(PBMDIR) book.pdf
