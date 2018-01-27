#!/bin/bash

cmdX() {
  for var in $(seq 1 $1); do
    "$2"
  done
}

gclone() {
  if [ $1 == "-h" ]; then
    echo '''
Clone a git repository.

Usage:
  gc [Option] <user/organization> <repository> [target directory]

Options:
  -h: View this message  
  --ssh: Use SSH protocol (default)
  --https: Use HTTPS protocol
'''
    exit
  fi
  if [ $1 == "--https" ]; then
    git clone https://github.com/$2/$3.git $4
    exit
  fi
  if [ $1 == "--ssh" ]; then
    git clone git@github.com:$2/$3.git $4
    exit
  fi
  git clone git@github.com:$1/$2.git $3
}

dadJoke() {
  echo ""
  curl -H "Accept: text/plain" https://icanhazdadjoke.com/
  echo ""
}
