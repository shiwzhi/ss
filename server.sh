#!/bin/sh

ss-server -p 8900 -k helloworld -m chacha20-ietf -u&
/root/server_linux_amd64 -t "127.0.0.1:8900" -l ":554" -mode normal --crypt salsa20 --sndwnd 1000 --mtu 1280 --key shiweizhi --quiet&
/root/udp2raw_amd64_hw_aes -s -l 0.0.0.0:2049 -r 127.0.0.1:554 -a&
cat
