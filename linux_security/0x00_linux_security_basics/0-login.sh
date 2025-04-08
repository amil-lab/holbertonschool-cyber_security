#!/bin/bash
sudo last | sed 's/ :[0-9]\+//' | head -n 5
