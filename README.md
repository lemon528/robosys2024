# robosys2024
[![test](https://github.com/lemon528/robosys2024/actions/workflows/test.yml/badge.svg)](https://github.com/lemon528/robosys2024/actions/workflows/test.yml)  
ロボットシステム学授業用

## plus
数値における足し算を行い計算する。

## number_stats
このプロジェクトは様々な数値データにおける最大値、最小値、合計値、平均値を計算し表示させます。

## ダウンロード方法(共通)
- リポジトリをクローン
- cdでディレクトリに移動

```
$ git clone https://github.com/lemon528/robosys2024.git

$ cd robosys2024
```

## 使用方法
- 権限を付与する必要があるため権限を与えてから実行してください。
- ファイルの実行
```
$ chmod +x <ファイル名>

$ ./<ファイル名>
```

**Plusコード**  　　
seqコマンドで数列を計算可能
```
$ seq 5 ./plus
```

**number_stastsコード**  
 実行後数値を入力します。  

 ***入力する際の注意点***
 - 半角入力すること。
 - 数値と数値の間にスペースを入れること。

## 必要なソフトウェア
- Python
 - テスト済みバージョン3.7 ~ 3.11

## テスト環境
- Ubuntu 22.04.5 LTS

## ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます。
- このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
 - https://ryuichiueda.github.io/slides_marp/robosys2024/lesson2.html#1
 - https://ryuichiueda.github.io/slides_marp/robosys2024/lesson3.html#1
- © 2024 Kouhei Kobayashi
