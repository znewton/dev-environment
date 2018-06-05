#!/bin/bash

cmdX() {
  for var in $(seq 1 $1); do
    "$2"
  done
}

fn_exists()
{
  type $1 | grep -q 'shell function'
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
    return
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

gitContributions() {
  for var in "$@"; do 
    echo "$var Contributions:"
    git log --author="$var" --pretty=tformat: --numstat | awk '{ add += $1; subs += $2; loc += $1 - $2 } END { printf "  added lines: \033[38;5;84m+%s\033[0m\n  removed lines: \033[38;5;197m-%s\033[0m\n  total lines: \033[38;5;45m%s\033[0m\n", add, subs, loc }' -
  done
}

