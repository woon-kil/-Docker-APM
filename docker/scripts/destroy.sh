#!/bin/bash
set -e

docker-compose down --volumes
docker rmi docker_php_img docker_apache_img docker_mysql_img