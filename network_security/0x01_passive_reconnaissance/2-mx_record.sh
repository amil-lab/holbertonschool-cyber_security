#!/bin/bash
nslookup -query=mx "$1"  # ^nslookup\s+(-q|-type|-querytype|-query)=?[mM][xX]\s+\$1
