#!/bin/bash
domain=$1 && subfinder -d "$domain" -silent | awk -v d="$domain" '{print $0","; system("host " $0 " | grep \"address\" | awk \'{print $4}\' || echo \"-\"")}' | sed "s/,$//g" > "$domain".txt
