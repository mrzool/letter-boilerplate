output.pdf : template.tex letter.md
	pandoc $(filter-out $<,$^ ) -o $@ --latex-engine=xelatex --template=$<

clean :
	rm output.pdf
