#!/bin/bash
# Use this for your user data (script without newlines)
# install httpd (Linux 2 version)
yum update -y
yum install -y httpd.x86_64
# start the webservice
systemctl start httpd.service
# enable the webservice
systemctl enable httpd.service
echo "Hello World from $(hostname -f)" > /var/www/html/index.html
