class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   
    VALID_PASSWORD_REGEX =  /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i 
    VALID_NAME_REGEX = /\A[ぁ-んァ-ンー-龥]+\z/i
    VALID_FURIGANA_REGEX =  /\A[ァ-ン]+\z/i 
       
    with_options presence: true do
      validates :name,  uniqueness: { case_sensitive: true }
      validates :shop       
      validates :email
      validates :call_number
      validates :prefecture
      validates :city
      validates :address
      validates :postal_code
      validates :password, format: { with: VALID_PASSWORD_REGEX }
    end
end
