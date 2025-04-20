#!/bin/bash
echo "$(nslookup "$1" | grep '^Address:' | tail -n1 | cut -d' ' -f2)"
