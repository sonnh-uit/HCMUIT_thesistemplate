# Use a base image with the required Linux distribution
FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive

# Update the system and install LaTeX dependencies
RUN apt-get update -y && \
    apt-get install -y texlive-latex-extra texlive-lang-all \
                       texlive-bibtex-extra biber

WORKDIR /app
ADD . /app
RUN mkdir -p /app/result
VOLUME /app/result
RUN chmod +x /app/build.sh
CMD ["/app/build.sh" ]
