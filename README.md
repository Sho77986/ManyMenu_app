# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...





# テーブル設計

## users テーブル

| Column       | Type        | Options     |
| ----------   | ----------- | ----------  |
| name         | string      | null: false |
| shop_name    | string      | null: false |
| email        | string      | null: false |
| call_number  | string      | null: false |
| prefecture   | integer      | null: false |
| city         | integer      | null: false |
| address      | integer     | null: false |
| postal_code  | string      | null: false |
| password     | string      | null: false |
| image        | string      | null: false |

### Association
- has_many :manus
- has_one  :shop_status

## manus テーブル

| Column        | Type       | Options     |
| ----------    | ---------- | ----------- |
| user_id       | integer     | null: false, foreign_key :true |
| category_id   | integer     | null: false |
| image         | string     | null: false |  
| name          | string     | null: false |
| price         | string     | null: false |
| calorie       | string     | null: false |
| allergies     | string     | null: false |
| comment       | string     | null: false |

### Association 
- belongs_to :users



## shop_status テーブル
| Column       | Type       | Options     |
| ----------   | ---------- | ----------- |
| empty_time   | integer    |
| clear_efforts| string     |             

### Association
- belongs_to :users


