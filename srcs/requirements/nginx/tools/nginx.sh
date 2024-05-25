#!/bin/sh

mkdir -p /etc/nginx/ssl

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -out $CERTS_ -keyout $CERTSKEYS_ -subj "/C=SP/ST=Andalucia/L=Malaga/O=42/OU=42/CN=$DOMAIN_NAME/UID=$LOGIN"

sed -i "s/domain_name/$DOMAIN_NAME/" /etc/nginx/nginx.conf
sed -i "s#certs_#$CERTS_#g" /etc/nginx/nginx.conf
sed -i "s#certskeys_#$CERTSKEYS_#g" /etc/nginx/nginx.conf

nginx -g "daemon off;"