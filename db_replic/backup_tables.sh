#!/bin/bash

DB_NAME="wordpress"
DB_USER=root
DB_PASSWORD=secret
DB_HOST=127.0.0.1
MYSQL="mysql --skip-column-names -h $DB_HOST -u $DB_USER -p$DB_PASSWORD $DB_NAME"

BACKUP_DIR="db_backup_partial/"$(date -I)

mkdir -p $BACKUP_DIR

$MYSQL -e "STOP REPLICA;"

for table in $( $MYSQL -e "SHOW TABLES;")
do
        echo "Dumping: ": $table
        mysqldump -h $DB_HOST -u $DB_USER -p$DB_PASSWORD --add-locks --single-transaction --source-data=2 --quick --set-charset --events --routines --triggers $DB_NAME $table > $BACKUP_DIR/$table.sql
done

$MYSQL -e "START REPLICA;"
