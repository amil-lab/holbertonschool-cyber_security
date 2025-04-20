#!/bin/bash
whois "$1" | awk -v out="$1.csv" 'BEGIN{FS=": ";OFS=","} /^(Registrant|Admin|Tech) (Name|Organization|Street|City|State\/Province|Postal Code|Country|Phone|Phone Ext|Fax|Fax Ext|Email):/ {gsub(/\r/, "", $2); print $1, $2 >> out}'
