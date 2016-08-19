# 記事の書き方

## 使い方

1. `git clone https://github.com/word-overrun/book-first-edition.git`
2. `cd ./book-first-edtion`
3. `git submodule update --init`
4. `cd ./articles`
5. `cp -r ./markdown_hinagata ./my-article-name`
6. `cd ./my-article-name`
7. `make`

これで`main.pdf`が生成されれば成功です。
あとは`body.md`を編集すれば記事が出来ます。

## word-lua
WORDでは新たにLuaLaTeXが使えるようになりました。

### 「文　編集部」の消し方
LuaLaTeXでは「文　編集部」は以下のコマンドでも消すことができます。

```tex
\authormark{}
```

### 偶数頁
また、偶数頁始まりも`\documentclass`のオプションに`swapheader`をつけていただくことで簡単にできます。

```TeX
\documentclass[swapheader]{word-lua}
%.....
```

## 質問
[@\_yyu\_](https://twitter.com/_yyu_)へ投げると早い。word-luaに関しては[@Nymphium](https://twitter.com/Nymphium)か[@azuma962](https://twitter.com/azuma962)へ。

