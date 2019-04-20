FROM alpine

WORKDIR /root/

RUN wget "https://github.com/xtaci/kcptun/releases/download/v20190418/kcptun-linux-amd64-20190418.tar.gz" -O kcp.tar.gz
RUN tar xvf kcp.tar.gz; mv client_linux_amd64 kcp_client; mv server_linux_amd64 kcp_server

RUN sed -i -e 's/v[[:digit:]]\.[[:digit:]]/edge/g' /etc/apk/repositories
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories
RUN apk update
RUN apk add shadowsocks-libev


RUN wget "https://github.com/wangyu-/udp2raw-tunnel/releases/download/20181113.0/udp2raw_binaries.tar.gz" -O udpraw.tar.gz
RUN tar xvf udpraw.tar.gz
RUN mv udp2raw_amd64_hw_aes amdudpraw
RUN rm kcp.tar.gz udp*




