app_name=cart
source ./common.sh
cp cart.service /etc/systemd/system/cart.service

NODEJS

systemctl enable cart
systemctl start cart

