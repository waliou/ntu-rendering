#! /bin/bash

if [[ $(id -u) != 0 ]]; then
  echo "Please run as admin"
  exit 1
fi

apt install -y libgl1-mesa-dev libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev

g++ -v 2>&1 > /dev/null
if [[ $? != 0 ]]; then
  apt install -y g++-11
else
  echo "g++ found"
fi
