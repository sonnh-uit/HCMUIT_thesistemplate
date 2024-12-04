FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive

# Update the system and install LaTeX dependencies
RUN apt-get update && apt-get upgrade -y 
RUN apt-get install -y biber latexmk 
RUN apt-get install -y texlive-full 
# RUN apt-get install -y texlive-latex-base 
# RUN apt-get install -y texlive-latex-extra 
# RUN apt-get install -y texlive-fonts-recommended 
# RUN apt-get install -y texlive-lang-english 
# RUN apt-get install -y texlive-lang-other 
# RUN apt-get install -y texlive-bibtex-extra biber 
# RUN apt-get install -y texlive-fonts-extra
WORKDIR /app
ADD . /app
ENTRYPOINT ["sh", "-c", "pdflatex slide.tex && biber slide && pdflatex slide.tex"]