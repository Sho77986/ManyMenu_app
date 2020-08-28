class Crean < ApplicationRecord

  with_options presence: true do
    validates :crean_action
    validates :disinfection_action
    validates :other_action
    validates :today_empty_time
    validates :tomorrow_empty_time
    validates :weekend_empty_time
  end
end
