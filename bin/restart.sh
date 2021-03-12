#!/bin/bash
cd `dirname $0`
echo "restart begin!"
./stop.sh
./start.sh
echo "restart end!"
