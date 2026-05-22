#!/bin/bash
c=$1; for i in 1 2 3 4; do n=$((c>8?8:c)); m=$((n==8?255:256-2**(8-n))); printf "%d" $m; [ $i -lt 4 ] && printf "."; ((c-=n)); done; echo
