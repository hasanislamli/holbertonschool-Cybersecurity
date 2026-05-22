#!/bin/bash
c=$1; for i in 1 2 3 4; do n=$(( c>8 ? 8 : c )); printf "%d" $((256 - 2**(8-n))); [ $i -lt 4 ] && printf "."; (( c-=n )); done; echo
