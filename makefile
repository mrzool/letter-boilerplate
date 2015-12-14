TEX = pandoc
src = template.tex letter.md
LFLAGS = --latex-engine=xelatex

output.pdf : $(src)
	$(TEX) $(filter-out $<,$^ ) -o $@ $(LFLAGS) --template=$<

.PHONY: clean
clean :
	rm output.pdf
