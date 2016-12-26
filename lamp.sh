#!/bin/bash
echo "Please select install soft:"
echo "0)Apache:(y/n)"
read $apache
echo "1)Nginx:(y/n)"
read $nginx
echo "2)Mysql:(y/n)"
read $mysql
echo "3)PHP:(y/n)"
read $php
sh update_os.sh
if [ "$apache" = "y" ]
	then 
	sh apache_install.sh;
fi
if [ "$nginx" = "y" ]
	then 
	sh nginx_install.sh;
fi
if [ "$mysql" = "y" ]
	then 
	sh mysql_install.sh;
fi
if [ "$php" = "y" ]
	then 
	sh php_install.sh;
fi
sh ok_install.sh
