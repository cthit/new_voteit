#!/bin/bash

#Fix env variables
sed -i "s/%SMTP_HOST%/${SMTP_HOST}"
sed -i "s/%SMTP_PORT%/${SMTP_PORT}"
sed -i "s/%SMTP_SENDER%/${SMTP_SENDER}"

./bin/supervisord -c etc/supervisord.conf
nginx
while :; do read; done < /dev/null