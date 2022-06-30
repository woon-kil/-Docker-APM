#!/bin/bash
set -e

if ! [[ -d ../logs/apache ]]; then
    mkdir -p ../logs/apache
fi

if ! [[ -d ../logs/mysql ]]; then
    mkdir -p ../logs/mysql
fi

if ! [[ -d ../logs/php ]]; then
    mkdir -p ../logs/php
fi

if ! [[ -d ../database ]]; then
    mkdir ../database
fi

docker-compose up -d --build

docker exec DemoAPM_apache chown -R root:www-data /usr/local/apache2/logs
docker exec DemoAPM_php chown -R root:www-data /usr/local/etc/logs

curl -o /tmp/sqlsrv/Ubuntu16.tar -sSL https://github.com/Microsoft/msphpsql/releases/download/v4.3.0/Ubuntu16-7.0.tar