#!/bin/bash
source ./common.sh

echo copy RabbitMQ repo file
cp rabbitmq.repo /etc/yum.repos.d/rabbitmq.repo &>>log_file
Status_Print $?

echo install RabbitMQ
dnf install rabbitmq-server -y &>>log_file
Status_Print $?

echo start RabbitMQ Service
systemctl enable rabbitmq-server &>>log_file
systemctl start rabbitmq-server &>>log_file
Status_Print $?

echo Application User
rabbitmqctl add_user roboshop roboshop123 &>>log_file
rabbitmqctl set_permissions -p / roboshop ".*" ".*" ".*" &>>log_file
Status_Print $?
