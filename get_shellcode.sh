#!/bin/bash

if [ -d $1 ]
then
  echo "Usage: katar-shellcode <file>"
else
  echo "$(objdump -d $1 | grep '[0-9a-f]:' | cut -d$'\t' -f2 | grep -v 'file' | tr -d " \n" | sed 's/../\\x&/g')"
fi