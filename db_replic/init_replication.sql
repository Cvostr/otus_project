STOP REPLICA;
CHANGE REPLICATION SOURCE TO SOURCE_HOST='{MASTER_HOST}', SOURCE_USER='repl', SOURCE_PASSWORD='replica_pwd', SOURCE_AUTO_POSITION = 1, GET_SOURCE_PUBLIC_KEY = 1;
START REPLICA;
