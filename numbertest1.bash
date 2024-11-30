#!/bin/bash
# SPDX-FileCopyrightText: 2024 Kouhei Kobayashi
# SPDX-License-Identifire: BSD-3-Clause

ng () {
    echo "${1}行目が違うよ"
    res=1
}

res=0

# テスト 1: 単純な数値リスト
out=$(echo -e "10\n20\n30" | python3 ./number_stats)
expected="Sum(合計): 60.0
Mean(平均値): 20.0
Population Variance(標準偏差): 66.66666666666667
Standard Deviation(分散): 8.16496580927726
Median(中央値): 20.0
First Quartile(第1四分位数): 15.0
Third Quartile(第3四分位数): 25.0
Max(最大値): 30.0
Min(最小値): 10.0"
echo "$out" | grep -q "$expected" || ng "$LINENO"

# テスト 2: 負の数と小数
out=$(echo -e "-10\n-20\n0.5" | python3 ./number_stats)
expected="Sum(合計): -29.5
Mean(平均値): -9.833333333333334
Population Variance(標準偏差): 123.69444444444444
Standard Deviation(分散): 11.118755515291345
Median(中央値): -10.0
First Quartile(第1四分位数): -15.0
Third Quartile(第3四分位数): -4.75
Max(最大値): 0.5
Min(最小値): -20.0"
echo "$out" | grep -q "$expected" || ng "$LINENO"

# テスト 3: 空入力
out=$(echo "" | python3 ./number_stats)
expected="Invalid input detected. Please enter only numbers."
echo "$out" | grep -q "$expected" || ng "$LINENO"

# テスト 4: 無効な入力
out=$(echo -e "10\ntwenty\n30" | python3 ./number_stats)
expected="Invalid input detected. Please enter only numbers."
echo "$out" | grep -q "$expected" || ng "$LINENO"

# テスト 5: 奇数個のデータ
out=$(echo -e "10\n20\n30\n40\n50" | python3 ./number_stats)
expected="Sum(合計): 150.0
Mean(平均値): 30.0
Population Variance(標準偏差): 200.0
Standard Deviation(分散): 14.142135623730951
Median(中央値): 30.0
First Quartile(第1四分位数): 15.0
Third Quartile(第3四分位数): 45.0
Max(最大値): 50.0
Min(最小値): 10.0"
echo "$out" | grep -q "$expected" || ng "$LINENO"

# 成功した場合
[ "${res}" = 0 ] && echo OK
exit $res

