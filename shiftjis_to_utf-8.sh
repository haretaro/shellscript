#!/bin/sh

#実行したフォルダ以下の*.javaファイルを
#ShiftJIS から UTF-8 に変換
for FILE in `find . -name *.java`;
do
  mv $FILE "$FILE"_tmp;
  iconv -f SHIFT-JIS -t UTF-8 "$FILE"_tmp > $FILE;
  rm -f "$FILE"_tmp;
done;
