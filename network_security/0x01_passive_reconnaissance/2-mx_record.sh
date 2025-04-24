#!/bin/bash
[[ "nslookup -query=mx $1" =~ ^nslookup[[:space:]]+(-q|-type|-querytype|-query)=?[mM][xX][[:space:]]+$1$ ]] && nslookup -query=mx "$1"
