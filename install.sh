#!/bin/sh
install -m 555 ./sbin/* /usr/local/sbin
install -m 600 /etc/examples/rc.shutdown /etc
