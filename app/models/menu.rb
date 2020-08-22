class Menu < ApplicationRecord

  mount_uploader :recommend_image_one, ImageUploader
  mount_uploader :recommend_image_two, ImageUploader
  mount_uploader :recommend_image_three, ImageUploader
  
  mount_uploader :main_image_one, ImageUploader
  mount_uploader :main_image_two, ImageUploader
  mount_uploader :main_image_three, ImageUploader

  mount_uploader :sub_image_one, ImageUploader
  mount_uploader :sub_image_two, ImageUploader
  mount_uploader :sub_image_three, ImageUploader

  mount_uploader :other_image_one, ImageUploader
  mount_uploader :other_image_two, ImageUploader
  mount_uploader :other_image_three, ImageUploader



  def User.search(search)
    if search != ""
      User.where('shop LIKE(?)', "%#{search}%")
    else
      User.all
    end
  end

end
