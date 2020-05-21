#!/bin/bash
yum install epel-release -y
yum update -y && yum upgrade -y
yum group install -y "Server with GUI"
yum install xrdp -y
sleep 5
systemctl start xrdp service
systemctl enable xrdp.service
firewall-cmd --zone=public --permanent --add-port=3389/tcp
firewall-cmd --reload
