#!/bin/sh

script_dir="`cd $(dirname $0); pwd`"

docker build -t thewtex/jupyter-notebook-debian $script_dir
