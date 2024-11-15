ВМ1 - nginx balancer, (apache + wordpress main), db main
ВМ2 - (apache + wordpress sec), db replica
ВМ3 - prometheus, grafana, ELK stack

# Установка Docker
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

## Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl enable --now docker

# Установка php + apache 2
sudo apt install apache2 ghostscript libapache2-mod-php php php-bcmath php-curl php-imagick php-intl php-json php-mbstring php-mysql php-xml php-zip
sudo systemctl enable --now apache2

# Установка nginx (на ВМ1)
sudo apt install nginx

# Установка mysql-client (для mysqldump)
sudo apt install mysql-client

# Загрузка образа mysql
docker pull mysql:8.0

# Загрузка образа node-exporter
docker pull prom/node-exporter

# Загрузка образов для мониторинга (на ВМ мониторинга)
docker pull prom/prometheus:v2.55.1
docker pull grafana/grafana:10.4.12
docker pull prom/node-exporter

# Загрузка образов ELK стека (на ВМ мониторинга)
sudo docker pull kibana:8.15.3
sudo docker pull logstash:8.15.3
sudo docker pull elasticsearch:8.15.3

# Порядок запуска
1. mysql (master)
2. mysql (slave)
3. wordpress (master)
5. nginx (master)
6. node_exporter (master)
7. node_exporter (slave)
8. monitoring
9. filebeat (master)
10. filebeat (slave)
