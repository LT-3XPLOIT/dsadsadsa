#!/bin/sh
git clone https://github.com/tpruvot/cpuminer-multi
cd cpuminer-multi
./autogen.sh
./configure
./build.sh
./cpuminer -a cryptonight -o stratum+tcp://xmr.pool.minergate.com:45700 -u chinyizheidk@gmail.com
while [ 1 ]; do
sleep 3
done
sleep 999
