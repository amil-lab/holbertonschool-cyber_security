#!/bin/bash
sudo  iptables -P INPUT DROP && iptables -A INPUT -p tcp --dport 80 -j ACCEPT
