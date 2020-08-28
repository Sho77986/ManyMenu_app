class QrCode < ApplicationRecord

  with_options presence: true do
    validates :number_small, length: {maximum: 5 }
    validates :number_big, length: { maximum: 5 }
    validates :qr_text, length: {maximum: 1000 }
  end
end
