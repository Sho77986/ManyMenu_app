class CreateCreans < ActiveRecord::Migration[6.0]
  def change
    create_table :creans do |t|
      t.string   :crean_action
      t.string   :disinfection_action
      t.string   :other_action
      t.string   :today_empty_time 
      t.string   :tomorrow_empty_time  
      t.string   :weekend_empty_time
      t.integer  :user_id,      null:false,  foreign_key: true
      t.timestamps
    end
  end
end
