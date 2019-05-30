FROM alpine

WORKDIR /root/

RUN sed -i -e 's/v[[:digit:]]\.[[:digit:]]/edge/g' /etc/apk/repositories
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories
RUN apk update
RUN apk add shadowsocks-libev

RUN wget "https://github.com/xtaci/kcptun/releases/download/v20190515/kcptun-linux-amd64-20190515.tar.gz" -O kcp.tar.gz
RUN tar xvf kcp.tar.gz;

RUN wget "https://github.com/xtaci/kcptun/releases/download/v20190515/kcptun-linux-arm64-20190515.tar.gz" -O kcp.tar.gz
RUN tar xvf kcp.tar.gz;

RUN wget "https://github.com/wangyu-/udp2raw-tunnel/releases/download/20181113.0/udp2raw_binaries.tar.gz" -O udpraw.tar.gz
RUN tar xvf udpraw.tar.gz

RUN rm kcp.tar.gz

