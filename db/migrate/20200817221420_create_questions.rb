class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string    :q_email,        null: false
      t.string    :q_call_number,  null: false
      t.string    :q_reason,       null: false
      t.string    :q_text,         null: false
      t.timestamps
    end
  end
end
