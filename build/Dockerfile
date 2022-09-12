FROM alpine

RUN apk add --no-cache --purge -uU gcc \
    git \
    lua5.4 \
    lua5.4-dev \
    lua-lpeg \
    musl-dev \
    make \
    && ln -s $(which lua5.4) /usr/bin/lua
