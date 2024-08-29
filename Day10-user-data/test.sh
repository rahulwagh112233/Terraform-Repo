#! /bin/bash
sudo yum upadate -y
sudo yum install -y httpd
sudo service httpd start
sudo systemctl enable httpd
echo "Hi team I am able to access user data thanks" > /var/www/html/index.html