#!/bin/bash
echo "$(nslookup "$1" | grep 'Address' | tail -n +3)" 
