#!/bin/sh
# set -e

# HOST_DOMAIN="host.docker.internal"
# if ! ping -q -c1 $HOST_DOMAIN > /dev/null 2>&1
# then
#  HOST_IP=$(ip route | awk 'NR==1 {print $3}')
#  # shellcheck disable=SC2039
#   echo -e "$HOST_IP\t$HOST_DOMAIN" >> /etc/hosts
# fi

# # first arg is `-f` or `--some-option`
# if [ "${1#-}" != "$1" ]; then
# set -- php-fpm "$@"
# fi
# exec "$@"

IP=$(ifconfig -a | grep "inet addr" | head -2 | tail -1 | cut -d ':' -f 2   | cut -d ' ' -f 1)
echo "$IP host.docker.internal" >>  /etc/hosts

exec "$@"