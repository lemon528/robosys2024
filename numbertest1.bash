#!/bin/bash

ng () {
    echo "${1}行目が違うよ"
    res=1
}

res=0

# テスト 1: 単純な数値リスト
out=$(echo "10 20 30" | python3 ./number_stats)
expected="Sum: 60.0
Average: 20.0
Max: 30.0
Min: 10.0"
echo "$out" | grep -q "$expected" || ng "$LINENO"

# テスト 2: 負の数と小数
out=$(echo "-10 -20 0.5" | python3 ./number_stats)
expected="Sum: -29.5
Average: -9.833333333333334
Max: 0.5
Min: -20.0"
echo "$out" | grep -q "$expected" || ng "$LINENO"

# テスト 3: 空入力
out=$(echo "" | python3 ./number_stats)
expected="No input provided."
echo "$out" | grep -q "$expected" || ng "$LINENO"

# テスト 4: 無効な入力
out=$(echo "10 twenty 30" | python3 ./number_stats)
expected="Invalid input."
echo "$out" | grep -q "$expected" || ng "$LINENO"

# 成功した場合の表示
[ "${res}" = 0 ] && echo OK
exit $res

