# robosys2024
[![test](https://github.com/lemon528/robosys2024/actions/workflows/test.yml/badge.svg)](https://github.com/lemon528/robosys2024/actions/workflows/test.yml)  
ロボットシステム学授業用

## plusコマンド
1から入力した数字までの足し算を行う。

## number_statsコマンド
入力した数値の最大値,最小値,合計,平均値,中央値,分散,標準偏差,第1四分位数,第3四分位数を表示させます。

## 使用方法
- リポジトリをクローン
- cdでディレクトリに移動
- 権限の付与

```
$ git clone https://github.com/lemon528/robosys2024.git

$ cd robosys2024

$ chmod +x <ファイル名>
```

## 実行方法と出力結果
**Plus**  
```
$ seq 10 | ./plus
55
```

**number_stasts**  
```
$ echo -e "10\n20\n30\n40\n50" | ./number_stats
=== Statistics ===
Numbers: [10.0, 20.0, 30.0, 40.0, 50.0]
Sum(合計): 150.0
Mean(平均値): 30.0
Population Variance(標準偏差): 200.0
Standard Deviation(分散): 14.142135623730951
Median(中央値): 30.0
First Quartile(第1四分位数): 15.0
Third Quartile(第3四分位数): 45.0
Max(最大値): 50.0
Min(最小値): 10.0
```

## 必要なソフトウェア
- Python
	- テスト済みバージョン3.7 ~ 3.11

## テスト環境
- Ubuntu 22.04.5 LTS

## ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます。
- このパッケージの一部のコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
 - https://ryuichiueda.github.io/slides_marp/robosys2024/lesson2.html#1
 - https://ryuichiueda.github.io/slides_marp/robosys2024/lesson3.html#1
- © 2024 Kouhei Kobayashi
