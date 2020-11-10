#!/bin/bash
echo '[!] Edit Shodan API first'
vi Dockerfile
echo '[!] Login docker'
docker login
echo '[!] Docker build'
docker build -t scoutv2 .