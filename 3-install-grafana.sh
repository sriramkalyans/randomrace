#!/bin/bash
echo "[grafana]" > /etc/yum.repos.d/grafana.repo
echo "name=grafana" >> /etc/yum.repos.d/grafana.repo
echo "baseurl=https://packages.grafana.com/oss/rpm" >> /etc/yum.repos.d/grafana.repo
echo "repo_gpgcheck=1" >> /etc/yum.repos.d/grafana.repo
echo "enabled=1" >> /etc/yum.repos.d/grafana.repo
echo "gpgcheck=1" >> /etc/yum.repos.d/grafana.repo
echo "gpgkey=https://packages.grafana.com/gpg.key" >> /etc/yum.repos.d/grafana.repo
echo "sslverify=1" >> /etc/yum.repos.d/grafana.repo
echo "sslcacert=/etc/pki/tls/certs/ca-bundle.crt" >> /etc/yum.repos.d/grafana.repo

sudo yum install grafana

systemctl daemon-reload
systemctl start grafana-server
systemctl enable grafana-server.service
