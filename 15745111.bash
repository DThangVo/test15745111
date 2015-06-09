#!/bin/bash
#学修番号：15745111
#氏名：ヴォー　ドゥックタン（VO DUC THANG）
#作成環境：Ubuntu 14.04 LTS

# check args is number and not zero
regn='^[0-9]+$'
if [ $# -lt 2 ] ; then
echo "エラー：引数は２つを入力してください。"; exit 1
fi

if [[ !($1 =~ $regn) && $1 -le 0 ]] ; then
  echo "エラー：引数１は0でない自然数で入力してください。"; exit 1
fi

if [[ !($2 =~ $regn) &&  $2 -le 0 ]] ; then
  echo "エラー：引数２は0でない自然数を入力してください。"
exit 1
fi
# print args
#echo "入力の引数１：$1"
#echo "入力の引数２：$2"

#最大公約数を探す
x=$1
y=$2

while [ $x -ne $y ] ; do
  if [ $x -gt $y ] ; then
    let x=$x-$y
  else
    let y=$y-$x
  fi
done

gcdnum=${x}

echo $gcdnum
#正常終了
exit 0

