#!/bin/bash  
subfinder -d $1 -silent -nW | awk '{print $1","$2}' > "$1.txt"  
