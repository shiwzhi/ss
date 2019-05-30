#!/bin/sh

/root/udp2raw_amd64_hw_aes -c -l 0.0.0.0:2049 -r 205.185.114.225:2049 -a&
/root/client_linux_amd64 --mode normal -r 127.0.0.1:2049 -l :554 --crypt salsa20 --rcvwnd 800 --mtu 1280 --key shiweizhi --quiet --conn 2&
cat
