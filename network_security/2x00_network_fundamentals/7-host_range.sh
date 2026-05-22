#!/bin/bash
ip=$1 cidr=$2; IFS=. read a b c d <<< "$ip"; mask=$((32-cidr)); size=$((2**mask)); net=$(( (a<<24|b<<16|c<<8|d) & (~(size-1)) )); first=$((net+1)); last=$((net+size-2)); printf "%d.%d.%d.%d - %d.%d.%d.%d" $((first>>24&255)) $((first>>16&255)) $((first>>8&255)) $((first&255)) $((last>>24&255)) $((last>>16&255)) $((last>>8&255)) $((last&255))
