class Question < ApplicationRecord

   with_options presence: true do
     #validates :q_email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i ,message: "正しいメールアドレスの表記で書いてください"}
     validates :q_call_number, length: { in: 6..11 }, numericality: true
     validates :q_reason, length: { maximum: 50 }
     validates :q_text, length: {maximum: 1000 }
   end
end
