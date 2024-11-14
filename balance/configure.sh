MAIN_ADDRESS=localhost:80
SECONDARY_ADDRESS=192.168.0.130:80

NGINX_CONF_PATH="/etc/nginx/sites-available/balance.conf"

sudo cp balance.conf $NGINX_CONF_PATH
sudo sed -i "s/{MAIN_ADDRESS}/$MAIN_ADDRESS/" $NGINX_CONF_PATH
sudo sed -i "s/{SECONDARY_ADDRESS}/$SECONDARY_ADDRESS/" $NGINX_CONF_PATH

sudo unlink /etc/nginx/sites-enabled/default
sudo ln -sf ../sites-available/balance.conf /etc/nginx/sites-enabled/balance.conf

sudo systemctl restart nginx
