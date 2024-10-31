#!/bin/bash

ng (){
	echo ${1}行目がちがうよーん
	res=1
}

res=0
a=小林
[ "$a" = 平林 ] || ng "$LINENO"
[ "$a" = 小林 ] || ng "$LINENO"


exit "$res"
