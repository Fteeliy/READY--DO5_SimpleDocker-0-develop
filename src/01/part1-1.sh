#!/bin/bash

im_id=$(docker images)

echo -e "docker images: \n$im_id"

im_id=$(echo "$im_id" | awk 'FNR == 2 {print $3}')

echo "im_id = $im_id"
echo
a=$(docker run -d "$im_id")
echo
cont_id=$(docker ps)

echo -e "docker ps: \n$cont_id"

cont_id=$(echo "$cont_id" | awk 'FNR == 2 {print $1}')
echo

inspect_list=$(docker inspect "$cont_id" > inspect_list)

ip_addr=$(cat inspect_list | grep \"IPAddress\" | awk 'FNR == 1 {print $2}' | sed 's/,//')
echo
echo "Ip address - $ip_addr"

docker_size=$(docker images | awk 'FNR == 2 {print $7}')

echo "Docker size - $docker_size"
echo
###stop:

a=$(docker stop "$cont_id")
echo

end_list=$(docker ps)
echo -e "docker ps after stop: \n$end_list"
