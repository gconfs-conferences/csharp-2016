DOWNLOADS=$(PICS)

all: pdf view
#pdf:
#	pdflatex slides.tex slides.pdf

pdf:
	pandoc slides.md \
		-t beamer \
		--include-in-header header.tex \
		--slide-level 2 \
		-V theme:Warsaw \
		-o slides.pdf

view:
	zathura --fork slides.pdf 

clean:
	rm -f {./,./parts/}*.{aux,log,nav,toc,snm,pdf,out,png}
