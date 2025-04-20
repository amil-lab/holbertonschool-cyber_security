#!/bin/bash
whois "$1" | awk -v out="$1.csv" 'BEGIN{FS=": ";OFS=","} /^(Registrant|Admin|Tech) (Organization|State\/Province|Country|Email):/ {gsub(/\r/,"",$2); print $1,$2 >> out}'
