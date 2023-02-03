#!/bin/sh

# first run
if [ ! -f /settings.json ]; then
cat << EOF > /settings.json
{
    "RPC_USER": "bitcoin",
    "RPC_PASS": "<< GET_PASSWORD_FROM_BITCOIN_PROPERTIES_PANE >>",
    "RPC_HOST": "bitcoind.embassy",
    "RPC_PORT": "8332",
}
EOF
fi

/usr/bin/local python3 stats-yaml.py

# health-check.sh &

# run the application
# exec python -m src
# https://github.com/goshiz/start9labs-havend-wrapper/blob/master/docker_entrypoint.sh
exec /usr/bin/local python3 -m src
