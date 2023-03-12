#!/bin/bash

echo "Export image in container.tar"

trash=$(docker export s21_container > container.tar)

echo "Clear containers"

trash=$(docker stop $(docker ps -q))
trash=$(docker rm $(docker ps -qa))
trash=$(docker rmi $(docker images -q))

echo "All images:"
echo
docker images
echo

echo "Import in s21_nginx:"
echo
trash=$(cat container.tar | docker import -c 'CMD ["nginx", "-g", "daemon off;"]' - s21_nginx)
docker images
echo
echo "Run s21_nginx"
trash=$(docker run --name s21_s21_container -p 80:80 -p 443:80 -d s21_nginx)

docker ps
echo
echo "Check localhost:80/status"
echo "End part2-2"
