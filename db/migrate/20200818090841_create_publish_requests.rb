class CreatePublishRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :publish_requests do |t|     
      t.string   :image_a  
      t.string   :image_b 
      t.string   :image_c 
      t.string   :image_d 
      t.string   :image_e  
      t.string   :image_f
      t.string   :image_g
      t.string   :image_h
      t.string   :image_i
      t.string   :image_j
      t.string   :publish_text  
      t.integer  :user_id,      null:false,  foreign_key: true
      t.timestamps
    end
  end
end
