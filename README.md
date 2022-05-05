# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| category           | string | null: false |
| sub_category       | string |             |
| first_name         | string | null: false |
| last_name          | string | null: false |

### Association

- has_many :user_mainrooms
- has_many :user_staffrooms
- has_many :staff_rooms, through: :user_staffrooms
- has_many :mainrooms, through: :user_mainrooms
- has_many :messages

## mainrooms テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |

### Association

- has_many :user_mainrooms
- has_many :staff_rooms
- has_many :users, through: :main_rooms
- has_many :messages

## user_mainrooms テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| user      | references | null: false, foreign_key: true |
| mainroom  | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- nelongs_to :mainroom


## staffrooms テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |

### Association

- belongs_to :main_room
- has_many :user_staffrooms
- has_many :users, through: :user_staffrooms
- has_many :messages

## user_staffrooms テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| user      | references | null: false, foreign_key: true |
| staffroom  | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- nelongs_to :staffroom

## messages テーブル

| Column       | Type       | Options                        |
| -------      | ---------- | ------------------------------ |
| content      | text       |                                |
| user         | references | null: false, foreign_key: true |
| main_room    | references | null: false, foreign_key: true |
| staff_room   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :mainroom
- berongs_to :staffroom