#!/bin/sh
getcolour(){
	xrdb -query .Xresources | tr "\t" " " | sed -ne's/^[a-zA-Z0-9]*\*\.color'$1':[ ]*\(#[0-9a-f]*\)/\1/p'
}

reset=$(printf '\033[0m')
c00=$(printf '\033[0;30m')
c01=$(printf '\033[0;31m')
c02=$(printf '\033[0;32m')
c03=$(printf '\033[0;33m')
c04=$(printf '\033[0;34m')
c05=$(printf '\033[0;35m')
c06=$(printf '\033[0;36m')
c07=$(printf '\033[0;37m')
c08=$(printf '\033[1;30m')
c09=$(printf '\033[1;31m')
c10=$(printf '\033[1;32m')
c11=$(printf '\033[1;33m')
c12=$(printf '\033[1;34m')
c13=$(printf '\033[1;35m')
c14=$(printf '\033[1;36m')
c15=$(printf '\033[1;37m')
code00=$(getcolour "0\\?0")
code01=$(getcolour "0\\?1")
code02=$(getcolour "0\\?2")
code03=$(getcolour "0\\?3")
code04=$(getcolour "0\\?4")
code05=$(getcolour "0\\?5")
code06=$(getcolour "0\\?6")
code07=$(getcolour "0\\?7")
code08=$(getcolour "0\\?8")
code09=$(getcolour "0\\?9")
code10=$(getcolour "10")
code11=$(getcolour "11")
code12=$(getcolour "12")
code13=$(getcolour "13")
code14=$(getcolour "14")
code15=$(getcolour "15")

cat << EOF
${c00}${code00} ${c01}${code01} ${c02}${code02} ${c03}${code03} ${c04}${code04} ${c05}${code05} ${c06}${code06} ${c07}${code07}
${c00}▉▉▉▉▉▉▉ ${c01}▉▉▉▉▉▉▉ ${c02}▉▉▉▉▉▉▉ ${c03}▉▉▉▉▉▉▉ ${c04}▉▉▉▉▉▉▉ ${c05}▉▉▉▉▉▉▉ ${c06}▉▉▉▉▉▉▉ ${c07}▉▉▉▉▉▉▉
${c08}▉▉▉▉▉▉▉ ${c09}▉▉▉▉▉▉▉ ${c10}▉▉▉▉▉▉▉ ${c11}▉▉▉▉▉▉▉ ${c12}▉▉▉▉▉▉▉ ${c13}▉▉▉▉▉▉▉ ${c14}▉▉▉▉▉▉▉ ${c15}▉▉▉▉▉▉▉
${c08}${code08} ${c09}${code09} ${c10}${code10} ${c11}${code11} ${c12}${code12} ${c13}${code13} ${c14}${code14} ${c15}${code15}${reset}
EOF
