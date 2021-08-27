# アプリケーション名
旅めし（旅のグルメ投稿サイト）

# アプリケーション概要
海外旅行先でグルメの投稿・検索ができるツールです。各エリアごとに視覚的にグルメ検索ができ、ジャンル、利用金額、マップなどを投稿することができます。

# URL
https://tabimeshi-0423.herokuapp.com/

# 利用方法
・投稿したいユーザーは新規登録してください（閲覧のみであれば登録不要）。
・ユーザーを登録し、ログインすれば全ての機能を利用できます（他人が投稿したデータの編集・削除等はできません）。
・トップページ：食べるボタンをクリックでエリアページを見ることができます。
・エリアページ：世界のエリアのグルメをクリックで選択できます。
・各一覧ページ：各エリアの投稿されたグルメ一覧を見ることができます。
・各詳細ページ：一覧ページの画像をクリックすると投稿の詳細情報を見ることができます。
・新規投稿ボタン：入力フォームに従い必要項目を入力すると、新規投稿をすることができます。

# 想定利用者層
・年齢：20代 ~ 30代
・職業：大学生、社会人、その他
・趣味：海外旅行、グルメ

# 目指した問題解決
既存のグルメサイトを使っていく中で下記の問題点が挙げられる。
・グルメを写真で確認してからお店に行きたい
・価格帯、利用人数、利用時間などを知りたい
・お店の場所が地図上で知りたい
・コメントができたり、投稿者に質問して詳しく知りたい
・旅行中ではなくても、世界中のグルメを見て回って海外旅行をしている気分になりたい

上記の問題点を解決できることを目指した

# 洗い出した要件
・ユーザー管理機能
・新規投稿機能
・トップページ
・エリアページ
・エリア別グルメ一覧表示機能
・投稿詳細機能
・マップ機能
・コメント投稿機能
・検索機能

# 実装した機能についての画像と説明
## エリアページの説明
視覚的にエリアを選択できるようにしたのがこだわりの点です。

## エリア別グルメ一覧ページの説明
各エリアの一覧ページです。
クリックすると詳細ページに遷移します。

## 投稿詳細ページ
投稿詳細ページです。
新規投稿で住所を入力することで詳細ページにそのお店の場所がMAP上に表示されます。
# テーブル設計

## users テーブル

| Column             | Type   | Options                  |
| ------------------ | ------ | ------------------------ |
| nickname           | string | null: false              |
| email              | string | null: false,unique: true |
| encrypted_password | string | null: false              |

### Association

- has_many :posts
- has_many :comments

## posts テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| restaurant_name   | string     | null: false                    |
| country           | string     | null: false                    |
| meal_name         | string     | null: false                    |
| price_id          | integer    | null: false                    |
| time_period_id    | integer    | null: false                    |
| genre_id          | integer    | null: false                    |
| person_number_id  | integer    | null: false                    |
| area_id           | integer    | null: false                    |
| text              | text       | null: false                    |
| user              | references | null: false, foreign_key: true |

### Association

- has_many  :comments
- belong_to :user

## comments テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| text    | text       | null: false                    |
| post    | references | null: false, foreign_key: true |
| user    | references | null: false, foreign_key: true |

### Association

- belong_to :post
- belong_to :user

# 実装予定の内容
・検索機能
・複数枚の画像投稿機能
・コメント投稿機能
・パンくずリスト表示