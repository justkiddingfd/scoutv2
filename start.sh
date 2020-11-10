#!/bin/bash
echo '[+] Install docker'
./installDocker.sh
echo '[!] Edit Shodan API first'
vi Dockerfile
echo '[+] Login docker'
docker login
echo '[+] Docker build'
docker build -t scoutv2 .
echo '[!] Remove archive'
docker rmi justkiddingfd/scout