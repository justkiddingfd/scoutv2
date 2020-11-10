#!/bin/bash

sudo apt update
sudo apt upgrade
sudo apt install -y docker.io
sudo systemctl enable --now docker