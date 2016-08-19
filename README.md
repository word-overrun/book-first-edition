WORD Overrun First Edition
=============================
[![Build Status](https://travis-ci.org/word-overrun/book-first-edition.svg?branch=master)](https://travis-ci.org/word-overrun/book-first-edition)

## 必要なもの

コンパイルを行うためには次のものが必要です。

- [TeXLive](https://www.tug.org/texlive/)（[MacTeX](https://tug.org/mactex/)）
- [Pandoc](http://pandoc.org/)

## コンパイル

全ての記事をまとめたものをコンパイルする場合は、リポジトリのルートで`make`を実行します。
環境変数を次のように設定すると、ヒラギノフォントが埋め込まれます。

```
$ export WORD_FONT=hiragino-pron
```

## 記事の作り方

現在、記事はTeXとMarkdownのいずれかを使って作ることができます。
いずれかの手順で`main.pdf`が生成されれば成功です。
また、環境変数を次のように設定すると、ヒラギノフォントが埋め込まれます。

```
$ export WORD_FONT=hiragino-pron
```

### TeX

1. `git clone git@github.com:word-overrun/book-first-edition.git`
2. `cd ./book-first-edtion`
3. `git submodule update --init`
4. `cd ./articles`
5. `cp -r ./tex_hinagata ./my-article-name`
6. `cd ./my-article-name`
7. `make`

`body.tex`を編集すれば記事が出来ます。

### Markdown

1. `git clone git@github.com:word-overrun/book-first-edition.git`
2. `cd ./book-first-edtion`
3. `git submodule update --init`
4. `cd ./articles`
5. `cp -r ./markdown_hinagata ./my-article-name`
6. `cd ./my-article-name`
7. `make`

`body.md`を編集すれば記事が出来ます。

## 「文　編集部」の消し方

「文　編集部」は以下のコマンドで消すことができます。

```tex
\authormark{}
```

