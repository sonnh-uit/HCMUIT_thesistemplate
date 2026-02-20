FROM ubuntu:latest as hcmuit-thesis-builder

ENV DEBIAN_FRONTEND=noninteractive \
    TERM=xterm \
    IS_GLOSSARIES=${IS_GLOSSARIES:-0}

LABEL   org.opencontainers.image.created=2025-01-22T08:00:00 \ 
        org.opencontainers.image.authors="Nguyen Hong Son" \
        org.opencontainers.image.url="https://github.com/sonnh-uit/HCMUIT_thesistemplate" \
        org.opencontainers.image.documentation="https://github.com/sonnh-uit/HCMUIT_thesistemplate/?tab=readme-ov-file#about-the-project" \
        org.opencontainers.image.licenses="MIT License" \
        org.opencontainers.image.description="This image use to build deep latex file."

RUN apt update && \
    apt install -y \
    texlive-bibtex-extra \ 
    biber \
    texlive-latex-extra \
    texlive-lang-english \
    texlive-font-utils \
    texlive-science \
    texlive-lang-other && \
    useradd -r -s /usr/sbin/nologin uit-thesis && \
    mkdir /uit-thesis && \
    chown -R uit-thesis:uit-thesis /uit-thesis && \
    chmod 755 /uit-thesis
COPY docker-entrypoint.sh /uit-thesis
USER uit-thesis
WORKDIR /uit-thesis
ENTRYPOINT [ "sh","-c","/uit-thesis/docker-entrypoint.sh $IS_GLOSSARIES" ]
