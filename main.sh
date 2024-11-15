#!/bin/bash

cd db_main
sudo docker compose up -d
cd ..


cd wordpress
sh install.sh
cd ..

cd balance/page
sh setup1.sh
cd ..
# nginx upstream
sh configure.sh
cd ..

cd node-exporter
sudo docker compose up -d
cd ..

cd filebeat
sh configure.sh
cd ..
