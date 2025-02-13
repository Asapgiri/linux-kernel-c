file='Linux kernel and C programming'
ex1='C programming excercises 1'
ppt='Linux kernel and C programming presentation'

doc:
	mkdir -p out
	mkdir -p out/sections
	#pdflatex -output-directory=out ${file}.tex
	#TEXMFOUTPUT="out:" bibtex out/${file}
	pdflatex -output-directory=out ${file}.tex
	pdflatex -output-directory=out ${file}.tex

ppt:
	mkdir -p out
	pdflatex -output-directory=out ${ppt}.tex
	pdflatex -output-directory=out ${ppt}.tex

ex1:
	mkdir -p out
	pdflatex -output-directory=out ${ex1}.tex
	pdflatex -output-directory=out ${ex1}.tex

