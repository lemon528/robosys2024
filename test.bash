#!/bin/bash
# SPDX-FileCopyrightText: 2024 kohei kobayashi
# SPDX-License-Identifier: BSD-3-Clause

ng (){
	echo ${1}行目がちがうよーん
	res=1
}

res=0
 out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng "$LINENO"

[ "${res}" = 0 ] && echo ok
exit "$res"
