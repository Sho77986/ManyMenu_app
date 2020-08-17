class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.integer      :user_id     ,null: false  ,foreign_key: true 
      t.integer      :category_id ,null: false 
      t.string       :image       ,null: false 
      t.string       :name        ,null: false 
      t.string       :price       ,null: false 
      t.string       :calorie     ,null: false 
      t.string       :allergies   ,null: false 
      t.string       :comment  
      t.timestamps
    end
  end
end
