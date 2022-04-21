# Ruby on Rails 練習

## 使い方

このアプリケーションを動かす場合は、まずはリポジトリを手元にクローンしてください。
その後、dockerイメージ を build してください。

```
$ docker compose build
```

データベースを作成します

```
$ docker compose run web rails db:create
```

その後、データベースへのマイグレーションを実行します。

```
$ docker compose run web rails db:migrate
```

Railsサーバーを立ち上げます

```
$ rails server
```