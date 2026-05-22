#!/bin/bash
ip addr | grep -E "inet " | grep -v "127.0.0.1" | head -1 | awk '{print $2}' | cut -d/ -f1
