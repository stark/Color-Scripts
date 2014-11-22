#!/usr/bin/env bash
 
f=3 b=4
for j in f b; do
  for i in {0..7}; do
    printf -v $j$i %b "\e[${!j}${i}m"
  done
done
d=$'\e[1m'
t=$'\e[0m'
v=$'\e[7m'
 
 
cat << EOF
 
 $f1███$d▄$t  $f2███$d▄$t  $f3███$d▄$t  $f4███$d▄$t  $f5███$d▄$t  $f6███$d▄$t  $f7███$d▄$t  
 $f1███$d█$t  $f2███$d█$t  $f3███$d█$t  $f4███$d█$t  $f5███$d█$t  $f6███$d█$t  $f7███$d█$t  
 $f1███$d█$t  $f2███$d█$t  $f3███$d█$t  $f4███$d█$t  $f5███$d█$t  $f6███$d█$t  $f7███$d█$t  
 $d$f1 ▀▀▀   $f2▀▀▀   $f3▀▀▀   $f4▀▀▀   $f5▀▀▀   $f6▀▀▀   $f7▀▀▀  
EOF
