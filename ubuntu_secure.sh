#!/bin/bash

# This script just removes Telemetry and does basic system more secure and protected
# Pull requests are welcome on github: https://github.com/butteff/Ubuntu-Telemetry-Free-Privacy-Secure

# System Up to Date:
sudo apt-get update
sudo apt-get -y upgrade
# ========


# Amazon & web apps Removing
sudo apt-get -y purge unity-lens-shopping
sudo apt-get -y purge unity-webapps-common
# ========


# AptUrl Removing:
sudo apt-get -y purge apturl #tool, which gives possibilities to start installation by clicking on url, can be executed with js, which is not secure
# ========


# Guest session & remote login disable for LightDm:
sudo sh -c 'printf "[SeatDefaults]\nallow-guest=false\ngreeter-show-remote-login=false\n" > /etc/lightdm/lightdm.conf.d/50-no-guest.conf'
sudo apt-get -y purge remote-login-service
sudo apt-get -y purge lightdm-remote-session-freerdp
sudo apt-get -y purge lightdm-remote-session-uccsconfigure
# ========


# Basic Telemetry Removing:
sudo apt-get -y purge zeitgeist
sudo apt-get -y purge zeitgeist-datahub
sudo apt-get -y purge zeitgeist-core
sudo apt-get -y purge zeitgeist-extension-fts
# ========


# DNS encryption:
sudo apt-get -y install dnscrypt-proxy #tool, which helps to protect dns leak
# ========


# FireWall:
sudo apt-get -y install ufw # ubuntu firewall, based on IpTables (NetFilter)
#uncomment, if you need another ufw config without ipv6:
#	sudo mv /etc/default/ufw /etc/default/ufw.backup
#	sudo cp -r ufw /etc/default/ufw  
sudo ufw default deny incoming #blocks any income traffic
sudo ufw default deny outgoing #blocks any outgoing traffic
sudo ufw allow out 80 #Allow web http connections
sudo ufw allow out 443 #Allow web https connections
sudo ufw enable #Enable UFW
# ========


# ClamAV Antivirus Installation:
sudo apt-get -y install clamav
sudo apt-get -y install clamav-daemon
# ========


# Other:
#	sudo apt-get -y purge cups  #uncoment if you don't use printers
#	sudo apt-get purge remmina  #uncomment if you don't use remmina remote connection tool [has libruaries for remote connection, which can be unsecure]
# ========


sudo apt-get -y autoremove #autoremove all other unused packages after uninstallation


# Trouble Shooting:
# 	if internet will not work, try to restart dnscrypt-proxy: 
# 		sudo /etc/init.d/dnscrypt-proxy restart
# 	Also, may be tool will use some another port, detect the port in this output: 
# 		sudo ss -ntulp 
# 	Then add the port to ufw:
# 		sudo ufw allow out [portnumber]
# 		sudo ufw reload
# ========

