#!/bin/bash
ip route get "$1" 2>/dev/null | awk '{for(i=1;i<=NF;i++) if($i=="via") c++} END{print c+1}'
