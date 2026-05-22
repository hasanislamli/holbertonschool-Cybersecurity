#!/bin/bash
IFS=. read -r a b c d <<< "$1"; for x in $a $b $c $d; do for i in {7..0}; do printf "%d" $(((x>>i)&1)); done; [ "$x" != "$d" ] && printf "."; done; echo
