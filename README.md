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

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| restaurant_name  | string     | null: false                    |
| address          | string     | null: false                    |
| station          | string     |                                |
| time_period_id   | integer    | null: false                    |
| phone_number     | string     |                                |
| text             | text       | null: false                    |
| user             | references | null: false, foreign_key: true |

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