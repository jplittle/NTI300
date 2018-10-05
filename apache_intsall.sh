#!/bin/bash
yum -y install htppd mod_ssl
systemctl enable httpd
systemctl start httpd
sed -i 's/^/#/g' /etc/httpd/conf.d/welcome.conf
echo "<html><body><h1>testeeeeeeeer</h1></body></html>" > /var/www/html/index.html
