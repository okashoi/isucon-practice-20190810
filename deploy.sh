#!/bin/bash -eu

git pull
cd /home/isucon/webapp/go && PATH=/home/isucon/.local/go/bin:$PATH GOPATH=/home/isucon/webapp/go make build

sudo systemctl stop isuxi.go
sudo systemctl stop varnish
sudo systemctl stop varnishncsa
sudo systemctl stop mysql

# ログ消す
sudo rm /var/log/mysql/error.log
sudo rm /var/log/mysql/mysql-slow.log
sudo rm /var/log/varnish/varnishncsa.log

sudo systemctl daemon-reload

sudo systemctl start mysql
sudo systemctl start varnishncsa
sudo systemctl start varnish
sudo systemctl start isuxi.go
