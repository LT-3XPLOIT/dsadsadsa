#!/bin/sh
sudo apt update
sudo apt install screen -y
sudo apt install git automake autoconf libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev 
git clone https://github.com/tpruvot/cpuminer-multi
cd cpuminer-multi
sudo ./autogen.sh
sudo ./configure
sudo ./build.sh
./cpuminer -a cryptonight -o stratum+tcp://xmr.pool.minergate.com:45700 -u chinyizheidk@gmail.com
while [ 1 ]; do
sleep 3
done
sleep 999
