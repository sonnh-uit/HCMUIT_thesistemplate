install_latex:
	sudo apt install texlive-full texlive-lang-all biber texlive-latex-extra -y
	
build:
	pdflatex thesis
	biber thesis
	makeglossaries thesis
	pdflatex thesis
	pdflatex thesis