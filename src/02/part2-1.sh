#!/bin/bash

#clear old containers

trash=$(docker run -d nginx)
trash=$(docker stop $(docker ps -q))
trash=$(docker rm $(docker ps -aq))

##End clear

trash=$(docker run --name s21_container -p 80:80 -p 443:80 -d nginx)

trash=$(docker exec -it s21_container cat /etc/nginx/conf.d/default.conf > orig.default)
echo
echo "Read nginx's config file in orig.default"
echo "New config - in default.conf"
echo

trash=$(docker cp default.conf s21_container:/etc/nginx/conf.d/default.conf)

docker exec -it s21_container nginx -s reload
echo
echo "Nginx status at localhost:80/status - curl localhost:80/status"
echo "End part2-1"



