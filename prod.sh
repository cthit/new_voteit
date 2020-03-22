#!/bin/bash
./bin/supervisord -c etc/supervisord.conf
nginx
while :; do read; done < /dev/null