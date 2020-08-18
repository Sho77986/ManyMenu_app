class CreateQrCodes < ActiveRecord::Migration[6.0]
  def change
    create_table :qr_codes do |t|
      t.string  :number_small,   null: :false
      t.string  :number_big,     null: :false
      t.string   :qr_text
      t.integer  :user_id,      null:false,  foreign_key: true
      t.timestamps
    end
  end
end
