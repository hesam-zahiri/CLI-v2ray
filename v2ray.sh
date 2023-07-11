#!/bin/bash

# Get v2ray config from user
read -p "Please enter your vmess/vless/trojan/shadowsocks config: " vmess_config

# Setting the V2Ray configuration file
echo "$v2ray_config" > /etc/v2ray/config.json

# Start the V2Ray service
systemctl start v2ray

# Show logs live
tail -f /var/log/v2ray/error.log
