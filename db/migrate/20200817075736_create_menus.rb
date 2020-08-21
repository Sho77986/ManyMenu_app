class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.integer      :user_id     ,null: false  ,foreign_key: true 
      t.text       :recommend_image_one
      t.string       :recommend_price_one  
      t.string       :recommend_calorie_one   
      t.string       :recommend_allergies_one 
      t.string       :recommend_charm_one
      t.string       :recommend_image_two  
      t.string       :recommend_price_two
      t.string       :recommend_calorie_two   
      t.string       :recommend_allergies_two  
      t.string       :recommend_charm_two
      t.string       :recommend_image_three
      t.string       :recommend_price_three
      t.string       :recommend_calorie_three 
      t.string       :recommend_allergies_three
      t.string       :recommend_charm_three
 
      t.string       :main_image_one
      t.string       :main_price_one
      t.string       :main_calorie_one  
      t.string       :main_allergies_one
      t.string       :main_charm_one
      t.string       :main_image_two 
      t.string       :main_price_two  
      t.string       :main_calorie_two 
      t.string       :main_allergies_two 
      t.string       :main_charm_two
      t.string       :main_imege_three
      t.string       :main_price_three
      t.string       :main_calorie_three
      t.string       :main_allergies_three 
      t.string       :main_charm_three

      t.string       :sub_image_one
      t.string       :sub_price_one   
      t.string       :sub_calorie_one
      t.string       :sub_allergies_one
      t.string       :sub_charm_one
      t.string       :sub_image_two
      t.string       :sub_price_two 
      t.string       :sub_calorie_two 
      t.string       :sub_allergies_two 
      t.string       :sub_charm_two
      t.string       :sub_image_three
      t.string       :sub_price_three
      t.string       :sub_calorie_three
      t.string       :sub_allergies_three 
      t.string       :sub_charm_three

      t.string       :other_image_one
      t.string       :other_price_one  
      t.string       :other_calorie_one 
      t.string       :other_allergies_one 
      t.string       :other_charm_one
      t.string       :other_image_two 
      t.string       :other_price_two   
      t.string       :other_calorie_two  
      t.string       :other_allergies_two 
      t.string       :other_charm_two
      t.string       :other_image_three 
      t.string       :other_price_three
      t.string       :other_calorie_three 
      t.string       :other_allergies_three
      t.string       :other_charm_three

      t.timestamps
    end
  end
end
