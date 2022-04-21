# Ruby on Rails 練習

## 概要

Rails7 + MySQL8 + Solargraph(Ruby補完gem) + Rubocop(Linter)

## 使い方

このアプリケーションを動かす場合は、まずはリポジトリを手元にクローンしてください。
その後、dockerイメージ を build してください

```
$ docker compose build
```

データベースを作成します

```
$ docker compose run web rails db:create
```

その後、データベースへのマイグレーションを実行します

```
$ docker compose run web rails db:migrate
```

Rails開発環境を立ち上げます

```
$ docker compose up
```


## その他設定

ある程度Rubyの補完が効くようになります

Visual Studio Code に 拡張機能を追加

<b>Ruby Solargraph</b>
https://marketplace.visualstudio.com/items?itemName=castwide.solargraph



Visual Studio Code の `setting.json` に 設定を追加

```json
{
    "solargraph.externalServer": {
        "host": "localhost",
        "port": 8091
    },
    "solargraph.transport": "external",
    "solargraph.logLevel": "debug",
    "solargraph.hover": true,
}
```