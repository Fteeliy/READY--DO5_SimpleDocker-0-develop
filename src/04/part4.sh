#!/bin/bash

docker images
echo

echo "Build new image:"
trash=$(docker build -t s21_nginx:1.0 .)
echo
docker images
echo
echo "Run:"
trash=$(docker run --name s21_container -p 80:81 -d s21_nginx:1.0)
echo
docker ps
echo
echo "Check result - curl localhost:81 and curl localhost:81/status"

