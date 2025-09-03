#!/bin/bash

# Check for bitmonero.conf, copy if it doesn't exist
CONFIG_FILE=/config/bitmonero.conf
if [ ! -f "$CONFIG_FILE" ]; then
	cp /app/bitmonero-default.conf "$CONFIG_FILE"
fi

#kill node on 3000 because it autostarts for some idiot reason
npx -y kill-port 3000

#start the dashboard
cd /app/monero-dashboard && npm start &

#start the monero node
PNODE="${PUBLIC_NODE:-false}"

RPC=
if [ $PNODE = "true" ]; then
	RPC="--rpc-restricted-bind-port 18089 --rpc-restricted-bind-ip 0.0.0.0 --public-node"
fi
echo "---------------------------------${PNODE}---------------------------"
echo "---------------------------------${RPC}---------------------------"
cd /app/monero-v0.18.4.2 && ./monerod --config-file "$CONFIG_FILE" ${RPC}