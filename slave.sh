#!/bin/bash

cd db_replic
sudo docker compose up -d
cd ..

cd balance/page
sh setup2.sh
cd ../..

cd node_exporter
sudo docker compose up -d
cd ..

cd filebeat
sh configure.sh
cd ..
