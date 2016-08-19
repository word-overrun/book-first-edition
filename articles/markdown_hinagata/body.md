# 記事の書き方（Markdown編）

## ファイル構成

次のようなファイル構成になっています。

- `main-lua.tex`
    - TeXをコンパイルするための設定があるファイル。原則、このファイルは編集しない。
- `main.tex`
    - Pandocによって生成されるTeXファイルを読み込むファイル。
      このファイルではヘッダー文字列と著者名が記述されている。
      また、このファイルはリポジトリ直下の`main.tex`から読み込まれる。

## 記事を書く

見出しレベル1（`#`）で書いたものが記事のタイトルになります。
編集者の名前やヘッダなどは、TeXで制御するしかないので、
`main.tex`を直接編集してください。
そして、この`body.md`を編集すると記事になります。

## コンパイル

次のコマンドを実行するとコンパイルができます。

```
make
```

`main.pdf`が生成されれば成功です。

## 記事の追加

作った記事をリポジトリのルートにある`main.tex`に追加する必要がある。
次のようなTeXプログラムを追加する。

```tex
\setcounter{section}{0}
\makeatletter
\def\input@path{{./articles/<ARTICLE-DIRECTORY-NAME>/}}
\renewcommand\includegraphics[2][]{%
  \latexincludegraphics[#1]{./articles/<ARTICLE-DIRECTORY-NAME>/#2}
}
\renewcommand\bibliography[1]{%
  \latexbibliography{./articles/<ARTICLE-DIRECTORY-NAME>/#1}
}
\makeatother

\input{articles/<ARTICLE-DIRECTORY-NAME>/main.tex}
```
