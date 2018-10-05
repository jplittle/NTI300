#!/bin/bash
yum -y install htppd 
systemctl start httpd
yum -y install mod_ssl
systemctl restart httpd
systemctl status httpd
sed -i 's/^/#/g' /etc/httpd/conf.d/welcome.conf
echo "<html><body><h1>testeeeeeeeer</h1></body></html>" > /var/www/html/index.html
