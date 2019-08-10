#!/bin/bash -eu

git pull
cd /home/isucon/webapp/go && PATH=/home/isucon/.local/go/bin:$PATH GOPATH=/home/isucon/webapp/go make build

sudo systemctl restart mysql
sudo systemctl restart nginx.service
sudo systemctl daemon-reload
sudo systemctl restart isuxi.go
