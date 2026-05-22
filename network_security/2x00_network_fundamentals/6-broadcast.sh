#!/bin/bash
ip=$1 mask=$2; IFS=. read i1 i2 i3 i4 <<< "$ip"; IFS=. read m1 m2 m3 m4 <<< "$mask"; printf "%d.%d.%d.%d" $((i1|(255-m1))) $((i2|(255-m2))) $((i3|(255-m3))) $((i4|(255-m4)))
