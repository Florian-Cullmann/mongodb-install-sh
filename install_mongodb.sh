#!/bin/bash
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | apt-key add -
echo "deb [arch=amd64] http://repo.mongodb.org/apt/debian buster/mongodb-org/5.0 main" | tee /etc/apt/sources.list.d/mongodb-org-5.0.list
apt update
apt-get install -y mongodb-org
systemctl start mongod
systemctl status mongod
/opt/plesk/php/8.2/bin/pecl install mongodb
service apache2 restart
