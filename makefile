src = template.tex letter.md
LFLAGS = --latex-engine=xelatex

output.pdf : $(src)
	pandoc $(filter-out $<,$^ ) -o $@ $(LFLAGS) --template=$<

.PHONY: clean
clean :
	rm output.pdf
