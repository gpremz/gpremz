#! /bin/bash

echo ${yum install nginx -y}
echo ${systemctl enable nginx}
echo ${systemctl start nginx}
echo ${curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip"}

echo ${cd /usr/share/nginx/html}
echo ${rm -rf *}
echo ${unzip /tmp/frontend.zip}
echo ${mv frontend-main/* .}
echo ${mv static/* .}
echo ${rm -rf frontend-master static README.md}
echo ${mv localhost.conf /etc/nginx/default.d/roboshop.conf}
echo ${systemctl restart nginx}