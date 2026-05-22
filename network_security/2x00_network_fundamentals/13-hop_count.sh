#!/bin/bash
ip route get "$1" 2>/dev/null | grep -o "via" | wc -l
