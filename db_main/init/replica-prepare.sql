CREATE USER repl@'%' IDENTIFIED WITH 'caching_sha2_password' BY 'replica_pwd';
GRANT REPLICATION SLAVE ON *.* TO repl@'%';
FLUSH PRIVILEGES;
