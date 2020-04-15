#!/bin/bash

# Production.ini
sed -i "s/%SMTP_HOST%/${SMTP_HOST}/g" ./etc/production.ini
sed -i "s/%SMTP_PORT%/${SMTP_PORT}/g" ./etc/production.ini
sed -i "s/%SMTP_SENDER%/${SMTP_SENDER}/g" ./etc/production.ini

# gamma.json
sed -i "s/%GAMMA_CLIENT_ID%/${GAMMA_CLIENT_ID}/g" ./var/gamma.json
sed -i "s^%GAMMA_AUTH_URI%^${GAMMA_AUTH_URI}^g" ./var/gamma.json
sed -i "s^%GAMMA_TOKEN_URI%^${GAMMA_TOKEN_URI}^g" ./var/gamma.json
sed -i "s/%GAMMA_CLIENT_SECRET%/${GAMMA_CLIENT_SECRET}/g" ./var/gamma.json

nginx
./bin/supervisord -n -c etc/supervisord.conf
