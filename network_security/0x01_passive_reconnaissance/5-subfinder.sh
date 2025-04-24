#!/bin/bash
subfinder -silent -d $1 | while read sub; do host "$sub" | awk '/has address/ {gsub(/\.$/,"",$1); print $1 "," $4}'; done > "${1}.txt"
