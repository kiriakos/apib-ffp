FROM golang:latest
MAINTAINER Kiriakos Krastillis <kappa@kindstudios.gr>

WORKDIR /
RUN go get menteslibres.net/luminos
RUN luminos init readme
RUN rm /readme/sites/default/content/index.md
#VOLUME /README.md
RUN ln -s /README.md /readme/sites/default/content/index.md

WORKDIR /readme

EXPOSE 9000
CMD luminos run

