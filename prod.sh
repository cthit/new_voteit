#!/bin/bash

#Fix env variables
sed -i "s/%SMTP_HOST%/${SMTP_HOST}/g" ./etc/production.ini
sed -i "s/%SMTP_PORT%/${SMTP_PORT}/g" ./etc/production.ini
sed -i "s/%SMTP_SENDER%/${SMTP_SENDER}/g" ./etc/production.ini

nginx
./bin/supervisord -n -c etc/supervisord.conf
