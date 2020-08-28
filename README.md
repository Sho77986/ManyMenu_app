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
| prefecture   | integer     | null: false |
| city         | integer     | null: false |
| address      | integer     | null: false |
| postal_code  | string      | null: false |
| password     | string      | null: false |
| image        | string      | null: false |

### Association
- has_one :menus



## questions テーブル

| Column       | Type        | Options     |
| ----------   | ----------- | ----------  |
| q_mail       | string      | null: false |
| q_reason     | string      | null: false | 
| q_text       | string      | null: false |  






## qr_codes テーブル

| Column       | Type        | Options     |
| ----------   | ----------- | ----------  |
| number_small | string      | null: false |
| number_big   | string      | null: false | 
| qr_text      | string      | null: false |  
| user_id      | references   | null: false, foreign_key: true |

### Association
- belongs_to  :menus



## publish_requests テーブル

| Column       | Type        | Options     |
| ----------   | ----------- | ----------  |
| image_a      | string      | null: false |
| image_b      | string      | null: false | 
| image_c      | string      | null: false |  
| image_d      | string      | null: false |
| image_e      | string      | null: false | 
| image_f      | string      | null: false |  
| image_g      | string      | null: false |
| image_h      | string      | null: false | 
| image_i      | string      | null: false |
| image_j      | string      | null: false | 
| publish_text | string      | null: false |  
| user_id      | references   | null: false, foreign_key: true |

### Association
- belongs_to :menus



## cleans テーブル

| Column              | Type        | Options     |
| ----------          | ----------- | ----------  |
| clean_action        | string      | null: false |
| disinfection_action | string      | null: false | 
| other_action        | string      | null: false |  
| today_empty_time    | string      | null: false |
| tomorrow_empty_time | string      | null: false | 
| weekend_empty_time  | string      | null: false |  
| user_id             | references  | null: false, foreign_key: true |

### Association
- belongs_to  :menus





## menus テーブル

| Column                   | Type        | Options     |
| ----------               | ----------- | ----------  |
| recommend_image_one      | string      | null: false |
| recommend_price_one      | string      | null: false | 
| recommend_calorie_one    | string      | null: false |  
| recommend_allergies_one  | string      | null: false |
| recommend_charm_one      | string      | null: false | 
| recommend_image_two      | string      | null: false |
| recommend_price_two      | string      | null: false | 
| recommend_calorie_two    | string      | null: false |  
| recommend_allergies_two  | string      | null: false |
| recommend_charm_two      | string      | null: false | 
| recommend_image_three    | string      | null: false |
| recommend_price_three    | string      | null: false | 
| recommend_calorie_three  | string      | null: false |  
| recommend_allergies_three| string      | null: false |
| recommend_charm_three    | string      | null: false | 

| main_image_one      | string      | null: false |
| main_price_one      | string      | null: false | 
| main_calorie_one    | string      | null: false |  
| main_allergies_one  | string      | null: false |
| main_charm_one      | string      | null: false | 
| main_image_two      | string      | null: false |
| main_price_two      | string      | null: false | 
| main_calorie_two    | string      | null: false |  
| main_allergies_two  | string      | null: false |
| main_charm_two      | string      | null: false | 
| main_image_three    | string      | null: false |
| main_price_three    | string      | null: false | 
| main_calorie_three  | string      | null: false |  
| main_allergies_three| string      | null: false |
| main_charm_three    | string      | null: false | 

| sub_image_one      | string      | null: false |
| sub_price_one      | string      | null: false | 
| sub_calorie_one    | string      | null: false |  
| sub_allergies_one  | string      | null: false |
| sub_charm_one      | string      | null: false | 
| sub_image_two      | string      | null: false |
| sub_price_two      | string      | null: false | 
| sub_calorie_two    | string      | null: false |  
| sub_allergies_two  | string      | null: false |
| sub_charm_two      | string      | null: false | 
| sub_image_three    | string      | null: false |
| sub_price_three    | string      | null: false | 
| sub_calorie_three  | string      | null: false |  
| sub_allergies_three| string      | null: false |
| sub_charm_three    | string      | null: false | 

| other_image_one      | string      | null: false |
| other_price_one      | string      | null: false | 
| other_calorie_one    | string      | null: false |  
| other_allergies_one  | string      | null: false |
| other_charm_one      | string      | null: false | 
| other_image_two      | string      | null: false |
| other_price_two      | string      | null: false | 
| other_calorie_two    | string      | null: false |  
| other_allergies_two  | string      | null: false |
| other_charm_two      | string      | null: false | 
| other_image_three    | string      | null: false |
| other_price_three    | string      | null: false | 
| other_calorie_three  | string      | null: false |  
| other_allergies_three| string      | null: false |
| other_charm_three    | string      | null: false | 

| shop_page            | string      | null: false |
| user_id              | references  | null: false, foreign_key: true |

### Association
- belongs_to  :users
- has_many    :qr_codes
- has_many    :publish_requests
- has_one     :cleans