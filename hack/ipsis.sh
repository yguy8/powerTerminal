#!/bin/bash

host=$1

echo "Vamos a analizar la siguiete dirección IP: $host"

ping -c 1 $host > ping.log

for i in $(seq 60 70);do
        if test $(grep ttl=$i  ping.log -c) = 1; then
                echo "Es un LINUX"
        fi
done

for i in $(seq 100 200); do
        if test $(grep ttl=$i ping.log -c) = 1; then
                echo "Es un WINDOWS"
        fi
done

rm ping.log

