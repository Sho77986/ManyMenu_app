class PublishRequest < ApplicationRecord
    validates :publish_text, length: {maximum: 1000 }
end
