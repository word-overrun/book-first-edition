WORD Overrun First Edition
=============================
[![Build Status](https://travis-ci.org/word-overrun/book-first-edition.svg?branch=master)](https://travis-ci.org/word-overrun/book-first-edition)

# 使い方（TeX）

1. `git clone git@github.com:word-overrun/book-first-edition.git`
2. `cd ./book-first-edtion`
3. `git submodule update --init`
4. `cd ./articles`
5. `cp -r ./tex_hinagata ./my-article-name`
6. `cd ./my-article-name`
7. `autoconf`
8. `./configure`
9. `make`

これで`main.pdf`が生成されれば成功です。
あとは`main.tex`を編集すれば記事が出来ます。

# 「文　編集部」の消し方
WORD編集部の人間ではない場合、著者の前に付く「文　編集部」を削除したくなると思います。
そういう場合は`\subtitle`の後（少なくとも`\begin{document}`の前）などに次のようなコマンドを追加してください。

```tex
\makeatletter
\renewcommand{\@authormark}{}
\makeatother
```
このようにすると、「文　編集部」が消滅します。

# word-lua
WORDでは新たにLuaLaTeXが使えるようになりました。
使い方は、上記の**使い方8.**で`./configure --enable-luatex`としてください。
以降は`make`のみでOKです。

## 「文　編集部」の消し方
LuaLaTeXでは「文　編集部」は以下のコマンドでも消すことができます。

```tex
\authormark{}
```

## 偶数頁
また、偶数頁始まりも`\documentclass`のオプションに`swapheader`をつけていただくことで簡単にできます。

```tex
\documentclass[swapheader]{word-lua}
%.....
```

# 質問
[@\_yyu\_](https://twitter.com/_yyu_)へ投げると早い。

