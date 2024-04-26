#! /bin/bash

scene=$1
shift

display_server=$(hostname).local:14158

./build/pbrt $scene --display-server $display_server "$@" 
