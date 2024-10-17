FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive

# Update the system and install LaTeX dependencies
RUN apt-get update -y && \
    apt-get install -y texlive-latex-extra texlive-lang-english texlive-lang-other texlive-bibtex-extra biber

WORKDIR /app
ADD . /app
RUN mkdir -p /result
VOLUME /result
RUN chmod +x /app/build.sh
CMD ["/app/build.sh" ]