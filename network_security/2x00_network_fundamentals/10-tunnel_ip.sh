#!/bin/bash
ip addr show 2>/dev/null | grep -A2 tun0 | grep "inet " | awk '{print $2}' | cut -d/ -f1
