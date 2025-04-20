#!/bin/bash
nslookup "$1" | grep 'Address' | tail -n +3
