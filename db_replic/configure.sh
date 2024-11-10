MASTER_HOST=192.168.0.131

cp init_replication.sql init/init_replication.sql
sed -i "s/{MASTER_HOST}/$MASTER_HOST/" init/init_replication.sql

sudo docker compose up -d --force-recreate
