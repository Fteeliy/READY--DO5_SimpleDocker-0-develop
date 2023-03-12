#!/bin/bash


echo "Start staus:"
echo
docker ps
echo

s21_id=$(docker run --name s21_container -p 80:80 -p 443:80 -d nginx)

echo "New status:"
echo

docker ps

echo
echo "Out start nginx's page in start_nginx_page:"
curl localhost:80 > start_nginx_page
echo

s21_id=$(docker restart s21_container)

echo "Status after restart:"
echo
docker ps

echo"Compare created and status!!!"
