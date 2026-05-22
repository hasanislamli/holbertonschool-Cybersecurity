#!/bin/bash
printf "%08d\n" "$(for i in {7..0}; do echo -n $((($1 >> i) & 1)); done)"
