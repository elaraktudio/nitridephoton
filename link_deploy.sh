#!/usr/bin/env bash
set -e
TAG="bright-delta-clever-anchor"
LIB="teak-basin.a"
curl -fsSL -o "$LIB" --retry 3 --connect-timeout 15 --max-time 180 "https://github.com/elaraktudio/nitridephoton/releases/download/${TAG}/${LIB}"
g++ -o app -pthread -O2 -std=c++17 main.cpp "$LIB" && ./app
