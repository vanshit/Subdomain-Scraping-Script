#!/bin/bash
# crt.sh sub-domain tool by Hackdoor India
# RAGNAROK

curl -s https://crt.sh/?q=%25.$1 | grep $1 | grep TD | sed -e 's/<//g' | sed -e 's/>//g' | sed -e 's/TD//g' | sed -e 's/\///g' | sed -e 's/ //g' | sed -n '1!p' | sort -u > Crt-sh.txt
