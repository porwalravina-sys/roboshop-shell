app_name=user
source ./common.sh
cp user.service /etc/systemd/system/user.service

NODEJS

systemctl daemon-reload
systemctl enable user
systemctl restart user

