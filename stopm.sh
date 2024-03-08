#!/bin/bash

if [ ! -d pack ]; then
  echo "No pack directory found. Are you in the root of your vim config?"
  echo "If you are, you should create a pack directory."
  exit 1
fi

echo "STOPM - Sam's Totally Obvious Package Manager"
echo
echo "Installed packages:"

cd pack/
ls -1 -d */start/*/.git 2> /dev/null | \
  sed 's/start\///g' | sed 's/\/\.git//g' | sort | \
  awk '{a+=1} {printf "%3d - %s\n", a, $0}' | tee installed.txt

echo

user="$1"
package="$2"

if [ -z "$user" ] || [ -z "$package" ]; then
  echo "Usage: $0 <user> <package>"
  exit 1
fi

git clone "https://github.com/$user/$package" "$user/start/$package"
