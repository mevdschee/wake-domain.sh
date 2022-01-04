#!/bin/bash
sudo systemctl stop wake-domain
sudo systemctl disable wake-domain
sudo rm /etc/systemd/system/wake-domain.service
sudo rm /usr/local/bin/wake-domain.sh
sudo systemctl daemon-reload
