#!/bin/bash
sudo last -F | sed 's/ :[0-9]\+//' | head -n 5
