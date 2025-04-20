#!/bin/bash
whois "$1" | awk 'BEGIN{print "Type,Name,Org,Email,Phone"} /Registrant|Admin|Tech/ {t=$1} /Name:|Organization:|Email:|Phone:/ {gsub(/\r/,""); f[$1]=$0; sub(/.*: /,"",f[$1])} /^$/ {if(t){print t","f["Name:"]","f["Organization:"]","f["Email:"]","f["Phone:"]; delete f; t=""}}'
