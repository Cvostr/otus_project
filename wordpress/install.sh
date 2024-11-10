INSTALL_DIR="/opt"
WORDPRESS_DIR="$INSTALL_DIR/wordpress"
WORDPRESS_CONF_PATH="/etc/apache2/sites-available/wordpress.conf"
PORT=81

sudo mkdir -p $INSTALL_DIR
sudo chown www-data: $INSTALL_DIR
curl https://wordpress.org/latest.tar.gz | sudo -u www-data tar zx -C $INSTALL_DIR

sudo cp wordpress.conf $WORDPRESS_CONF_PATH
# use + because of / in paths
sudo sed -i "s+{WP_PATH}+$WORDPRESS_DIR+g" $WORDPRESS_CONF_PATH
sudo sed -i "s/{PORT}/$PORT/g" $WORDPRESS_CONF_PATH

sudo a2ensite wordpress
sudo a2enmod rewrite
sudo a2dissite 000-default
sudo systemctl enable --now apache2