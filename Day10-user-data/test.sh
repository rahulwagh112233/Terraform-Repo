#! /bin/bash
sudo yum upadate -y
sudo yum install -y httpd
sudo service httpd start
sudo systemctl enable httpd
echo "The page was created by the user data" > /var/www/html/index.html