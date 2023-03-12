#!/bin/bash

systemctl stop nginx

cp nginx.conf /etc/nginx/nginx.conf
cp default.conf /etc/nginx/conf.d/default.conf

gcc hello.c -lfcgi -o hello.fcgi

systemctl start nginx

/usr/bin/spawn-fcgi -a 127.0.0.1 -p 8080 -fastcgi hello.fcgi

curl localhost:81 > s21_hello
