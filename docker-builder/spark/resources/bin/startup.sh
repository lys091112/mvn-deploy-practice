#!/bin/bash

#BIN_DIR="/crescent/local/bin"

# start mockserver 
#echo "Start MockServer"
#bash ${BIN_DIR}/start-mock.sh

#echo "10.252.25.90 DEV-SH-MAP-01" >> /etc/hosts
#echo "10.252.25.90 DEV-SH-MAP-02" > /etc/hosts
#echo "10.252.25.90 DEV-SH-MAP-03" > /etc/hosts

passwd root << EOF
root
root
EOF

mkdir -p  /var/run/sshd 

/usr/sbin/sshd -D &

# 防止docker镜像自动退出
tail -f /dev/null


