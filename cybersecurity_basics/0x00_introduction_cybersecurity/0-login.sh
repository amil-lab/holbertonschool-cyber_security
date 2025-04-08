#!/bin/bash
last | sed 's/ :[0-9]\+//' | head -n 5
