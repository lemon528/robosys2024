#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 kohei kobayashi
# SPDX-License-Identifier: BSD-3-Clause

ng (){
	echo ${1}行目がちがうよーん
	res=1
}

res=0

### 間違ってる入力 ###
out=$(echo あ | ./plus)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo  | ./plus)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

### 合ってる入力 ###
out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng "$LINENO"

[ "${res}" = 0 ] && echo ok
exit "$res"
