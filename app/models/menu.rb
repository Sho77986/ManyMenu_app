class Menu < ApplicationRecord


  def User.search(search)
    if search != ""
      User.where('shop LIKE(?)', "%#{search}%")
    else
      User.all
    end
  end
end
