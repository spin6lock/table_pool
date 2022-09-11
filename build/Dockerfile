FROM alpine

RUN apk add --no-cache --purge -uU gcc \
    git \
    lua5.4 \
    lua5.4-dev \
    lua-lpeg \
    musl-dev \
    make 

RUN export CPATH="/usr/include/lua5.4/" \
    && git clone https://github.com/spin6lock/table_pool.git \
    && cd table_pool \
    && git submodule update --init \
    && cd sproto \
    && make linux
