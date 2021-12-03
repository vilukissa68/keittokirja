all: main.tex
		xelatex main.tex
		makeindex -s main.ist -t main.glg -o main.gls main.glo
		biber main
		xelatex main.tex
		xelatex main.tex

clean:
		-rm -f main.glg
		-rm -f main.glo
		-rm -f main.gls
		-rm -f main.ts
		-rm -f main.run.xml
		-rm -f main.aux
		-rm -f main.bcf
		-rm -f main.log
		-rm -f main.out
		-rm -f main.toc
		-rm -f main.ist
		-rm -f pdfa.xmpi
		-rm -f main.bbl
		-rm -f main.blg
		-rm -f main.fls
