#! bin/bash
sudo apt-get update
clear
sudo apt-get install mysql-server
clear
sudo service mysql start
clear
/usr/bin/mysql -u root -p
