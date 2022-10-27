#!/usr/bin/env sh
#
# https://serverfault.com/questions/577370/how-can-i-use-environment-variables-in-nginx-conf#:~:text=Using%20environment%20variables%20in%20nginx,configuration%20dynamically%20before%20nginx%20starts.

set -eu

envsubst '${OS_API} ${OS_CONDUCTOR} ${OS_PACKAGER} ${OS_VIEWER} ${OS_EXPLORER} ${OS_ADMIN} ${OS_FDP_ADAPTERS}' < /etc/nginx/server-rules.conf.template > /etc/nginx/server-rules.conf

cat /etc/nginx/server-rules.conf

exec "$@"
