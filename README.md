# README



# アプリ名
  ・ManyMenu

# 概要(このアプリでできることを書いて下さい)
  ・各店舗メニューを１２品掲載するアプリです。
  ・検索機能を用い、アプリに登録されている店舗を検索、メニューを閲覧できます。
  ・選択のパラドックスからくるメニュー選びによる満足度を、１２品のみ掲載する事で軽減し、満足度を上げます。
  ・メニュー以外にも衛生面や空き時間を掲載、顧客の不安を払拭できます。
  ・問い合わせ以外にQRコードを発行依頼するページを設置、QRコードの料金を非同期通信で計算し、依頼枚数に応じて発行する依頼をします。
# 本番環境(デプロイ先　テストアカウント＆ID)

# 制作背景(意図)
  ・コロナ禍で、飲食店は９割以上売上減少など大打撃を受けています、これを
  以下の機能で補い、売上回復させるための既存客増加に繋がればと思い作りました。
# DEMO(gifで動画や写真を貼って、ビューのイメージを掴んでもらいます)

# 工夫したポイント
  ・事業者のみがログインを行います。判断は営業許可証を写真で送ってもらい行います。
# 使用技術(開発環境)
  ・Ruby on rails
  ・Jquery
  ・Github
  ・HTML
  ・CSS
# 課題や今後実装したい機能
  現在のアプリでは、体験型に程遠いです。
# DB設計





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