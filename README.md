ВМ1 - nginx balancer, (apache + wordpress main), db main
ВМ2 - (apache + wordpress sec), db replica
ВМ3 - prometheus, grafana, ELK stack

## Установка Docker
sudo apt install docker.io

## Установка php + apache 2
sudo apt install apache2 ghostscript libapache2-mod-php php php-bcmath php-curl php-imagick php-intl php-json php-mbstring php-mysql php-xml php-zip

## Установка nginx (на ВМ1)
sudo apt install nginx
        
# Загрузка образа mysql
docker pull mysql:8.0
