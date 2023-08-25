#!/bin/bash

#kill node on 3000 because it autostarts for some idiot reason
npx -y kill-port 3000

#start the dashboard
cd /app/monero-dashboard && npm start &

#start the monero node
cd /app/monero-v0.18.2.2 && ./monerod --config-file ../bitmonero.conf