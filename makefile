file='Linux kernel and C programming'
ex1='C programming excercises 1'
lkacp1='LKACP1_CIntro'
lkacp2='LKACP2_Memory'
lkacp3='LKACP3_CMake'
lkacp4='LKACP4_KernelModules'
ex_ass='Example_Assignment'

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

lkacp3:
	mkdir -p out
	pdflatex -output-directory=out ${lkacp3}.tex
	pdflatex -output-directory=out ${lkacp3}.tex

lkacp4:
	mkdir -p out
	pdflatex -output-directory=out ${lkacp4}.tex
	pdflatex -output-directory=out ${lkacp4}.tex

ex1:
	mkdir -p out
	pdflatex -output-directory=out ${ex1}.tex
	pdflatex -output-directory=out ${ex1}.tex

ex_ass:
	mkdir -p out
	pdflatex -output-directory=out ${ex_ass}.tex
	pdflatex -output-directory=out ${ex_ass}.tex
