CC=pandoc
CFLAGS=--latex-engine=xelatex -T "Modelling and Performance Analysis with Simulation — Lernskript" \
	      -V mainfont="Source Sans Pro" -V geometry="left=2cm,right=2cm,bottom=1.5cm" \
		  --smart -V lang="ngerman" -V monofont="Source Code Pro" -V sansfont="Source Sans Pro" \
		  -V fontsize="12pt" -N --listings --standalone --data-dir="data/"

all: Lernskript.pdf

Lernskript.pdf: Lernskript.md
	$(CC) -o $@ $(CFLAGS) $+
