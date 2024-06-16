FROM alpine:3.18.2

ENV DUSK_VERSION 0.1

RUN apk update && \
    apk add wget && \
    cd /usr/local/bin && \
    wget https://github.com/Jacobious52/Dusk-lang/releases/download/v$DUSK_VERSION-alpha-linux-amd64/dusk && \
    chmod +x dusk && \
    apk del wget

WORKDIR /code

COPY bin .

CMD "./run.sh"