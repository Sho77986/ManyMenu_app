class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string  :image
      t.string  :comment
      t.timestamps
    end
  end
end
