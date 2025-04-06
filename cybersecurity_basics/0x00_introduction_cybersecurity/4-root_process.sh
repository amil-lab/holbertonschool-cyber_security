#!/bin/bash
USER=$1
ps aux | grep "^$USER " | grep -v '^[^ ]* [^ ]* 0 *0 '
