file='Linux kernel and C programming'
ex1='C programming excercises 1'
lkacp1='LKACP1_CIntro'
lkacp2='LKACP2_Memory'

doc:
	mkdir -p out
	mkdir -p out/sections
	#pdflatex -output-directory=out ${file}.tex
	#TEXMFOUTPUT="out:" bibtex out/${file}
	pdflatex -output-directory=out ${file}.tex
	pdflatex -output-directory=out ${file}.tex

lkacp1:
	mkdir -p out
	pdflatex -output-directory=out ${lkacp1}.tex
	pdflatex -output-directory=out ${lkacp1}.tex

lkacp2:
	mkdir -p out
	pdflatex -output-directory=out ${lkacp2}.tex
	pdflatex -output-directory=out ${lkacp2}.tex

ex1:
	mkdir -p out
	pdflatex -output-directory=out ${ex1}.tex
	pdflatex -output-directory=out ${ex1}.tex

