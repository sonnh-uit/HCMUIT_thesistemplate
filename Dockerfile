# Use a base image with the required Linux distribution
FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive

# Update the system and install LaTeX dependencies
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y texlive-latex-extra texlive-lang-all \
                       texlive-bibtex-extra biber

WORKDIR /app
COPY . .
ENTRYPOINT ["bash", "-c", "pdflatex thesis.tex && biber thesis && pdflatex thesis.tex"]
