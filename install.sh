#!/bin/bash
sudo systemctl stop wake-domain
sudo systemctl disable wake-domain
sudo cp wake-domain.service /etc/systemd/system/
sudo cp wake-domain.sh /usr/local/bin/
sudo systemctl daemon-reload
sudo systemctl enable wake-domain
sudo systemctl start wake-domain
