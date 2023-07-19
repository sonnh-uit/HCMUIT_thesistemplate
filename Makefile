all: update_distro install_latex  
update_distro:
	@echo "Update system"
	sudo apt update && sudo apt upgrade -y
install_latex:
	@echo "Install Latex"
	sudo apt install texlive-latex-extra -y
	sudo apt-get install texlive-lang-all -y
	sudo apt install texlive-bibtex-extra -y
	sudo apt install biber -y
build:
	@echo "Build thesis"
	pdflatex thesis.tex