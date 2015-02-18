VIEWER := firefox -new-window

default: open

flow.pdf: flow.tex
	pdflatex flow.tex

clean:
	rm -f *.aux *.log *.out *.pdf

open: flow.pdf
	$(VIEWER) flow.pdf &
