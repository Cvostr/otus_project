#!/bin/bash

DB_NAME="wordpress"
DB_USER=root
DB_PASSWORD=secret
DB_HOST=127.0.0.1
MYSQL="mysql --skip-column-names -h $DB_HOST -u $DB_USER -p$DB_PASSWORD $DB_NAME"

BACKUP_DIR="db_backup/"$(date -I)

mkdir -p $BACKUP_DIR

$MYSQL -e "STOP REPLICA;"

mysqldump -h $DB_HOST -u $DB_USER -p$DB_PASSWORD --add-locks --single-transaction --source-data=2 --quick --set-charset --all-databases --events --routines --triggers > $BACKUP_DIR/backup.sql

$MYSQL -e "START REPLICA;"
