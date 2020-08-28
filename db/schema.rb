# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_28_042821) do

  create_table "creans", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "crean_action"
    t.string "disinfection_action"
    t.string "other_action"
    t.string "today_empty_time"
    t.string "tomorrow_empty_time"
    t.string "weekend_empty_time"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "image"
    t.string "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "menus", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "recommend_image_one"
    t.string "recommend_price_one"
    t.string "recommend_calorie_one"
    t.string "recommend_allergies_one"
    t.string "recommend_charm_one"
    t.string "recommend_image_two"
    t.string "recommend_price_two"
    t.string "recommend_calorie_two"
    t.string "recommend_allergies_two"
    t.string "recommend_charm_two"
    t.string "recommend_image_three"
    t.string "recommend_price_three"
    t.string "recommend_calorie_three"
    t.string "recommend_allergies_three"
    t.string "recommend_charm_three"
    t.string "main_image_one"
    t.string "main_price_one"
    t.string "main_calorie_one"
    t.string "main_allergies_one"
    t.string "main_charm_one"
    t.string "main_image_two"
    t.string "main_price_two"
    t.string "main_calorie_two"
    t.string "main_allergies_two"
    t.string "main_charm_two"
    t.string "main_image_three"
    t.string "main_price_three"
    t.string "main_calorie_three"
    t.string "main_allergies_three"
    t.string "main_charm_three"
    t.string "sub_image_one"
    t.string "sub_price_one"
    t.string "sub_calorie_one"
    t.string "sub_allergies_one"
    t.string "sub_charm_one"
    t.string "sub_image_two"
    t.string "sub_price_two"
    t.string "sub_calorie_two"
    t.string "sub_allergies_two"
    t.string "sub_charm_two"
    t.string "sub_image_three"
    t.string "sub_price_three"
    t.string "sub_calorie_three"
    t.string "sub_allergies_three"
    t.string "sub_charm_three"
    t.string "other_image_one"
    t.string "other_price_one"
    t.string "other_calorie_one"
    t.string "other_allergies_one"
    t.string "other_charm_one"
    t.string "other_image_two"
    t.string "other_price_two"
    t.string "other_calorie_two"
    t.string "other_allergies_two"
    t.string "other_charm_two"
    t.string "other_image_three"
    t.string "other_price_three"
    t.string "other_calorie_three"
    t.string "other_allergies_three"
    t.string "other_charm_three"
    t.string "shop_page"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "publish_requests", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "image_a"
    t.string "image_b"
    t.string "image_c"
    t.string "image_d"
    t.string "image_e"
    t.string "image_f"
    t.string "image_g"
    t.string "image_h"
    t.string "image_i"
    t.string "image_j"
    t.string "publish_text"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "qr_codes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "number_small"
    t.string "number_big"
    t.string "qr_text"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "questions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "q_email", null: false
    t.string "q_call_number", null: false
    t.string "q_reason", null: false
    t.string "q_text", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name", null: false
    t.string "shop", null: false
    t.string "call_number", null: false
    t.string "prefecture", null: false
    t.string "city", null: false
    t.string "address", null: false
    t.string "postal_code", null: false
    t.string "image", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
