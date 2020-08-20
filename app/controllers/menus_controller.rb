class MenusController < ApplicationController


  def index
  end

  def new
  end

  def create
    @menu =Menu.new(menu_params)
    if @menu.save!
      redirect_to root_path
    else
      redirect_to menus_path
    end
  end


  def edit
   @menu=Menu.find(params[:id])
  end

  def update
    @menu =Menu.find(params[:id])
    if @menu.update(menu_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
  end

  def show
  end


  private

  def  menu_params
    params.require(:menu).permit(:recommend_image_one,   :recommend_price_one,   :recommend_calorie_one,   :recommend_allergies_one,   :recommend_charm_one,
            :recommend_image_two,   :recommend_price_two,   :recommend_calorie_two,   :recommend_allergies_two,   :recommend_charm_two,
            :recommend_image_three, :recommend_price_three, :recommend_calorie_three, :recommend_allergies_three, :recommend_charm_three,

            :main_image_one,   :main_price_one,   :main_calorie_one,   :main_allergies_one,   :main_charm_one,
            :main_image_two,   :main_price_two,   :main_calorie_two,   :main_allergies_two,   :main_charm_two,
            :main_imege_three, :main_price_three, :main_calorie_three, :main_allergies_three, :main_charm_three,

            :sub_image_one,   :sub_price_one,   :sub_calorie_one,   :sub_allergies_one,   :sub_charm_one,
            :sub_image_two,   :sub_price_two,   :sub_calorie_two,   :sub_allergies_two,   :sub_charm_two,
            :sub_image_three, :sub_price_three, :sub_calorie_three, :sub_allergies_three, :sub_charm_three,

            :other_image_one,   :other_price_one,   :other_calorie_one,   :other_allergies_one,   :other_charm_one,
            :other_image_two,   :other_price_two,   :other_calorie_two,   :other_allergies_two,   :other_charm_two,
            :other_image_three, :other_price_three, :other_calorie_three, :other_allergies_three, :other_charm_three,

            
    ).merge(user_id: current_user.id)
  end
  
end
