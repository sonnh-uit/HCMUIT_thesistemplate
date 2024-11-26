FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive

# Update the system and install LaTeX dependencies
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y texlive-latex-extra texlive-lang-english texlive-lang-other texlive-full \
                       texlive-bibtex-extra biber
WORKDIR /app
ADD . /app
ENTRYPOINT ["sh", "-c", "pdflatex slide.tex && biber slide && pdflatex slide.tex > /dev/null"]