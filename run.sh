#!/bin/bash
set -eu
cd "$(dirname $0)"
# pip install --upgrade pip
# python3 -m venv .
# . ./bin/activate
# pip install pipenv
if [ ! -f /usr/lib/x86_64-linux-gnu/libcairo.a ]; then
  sudo apt install libcairo2-dev
fi
if [ ! -f /usr/lib/x86_64-linux-gnu/gobject-introspection ]; then
  sudo apt install gobject-introspection
fi
pip install cython
pip install pygobject==3.38.0
pipenv install
python3 -m emote
