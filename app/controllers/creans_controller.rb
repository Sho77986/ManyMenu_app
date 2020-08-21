class CreansController < ApplicationController

  def index
  end

  def create
    @crean =Crean.new(creans_params)
    if @crean.save
      redirect_to root_path
    else
      render :index
    end
  end


  def edit
   @crean =Crean.find(params[:id])
  end


  def update
    @crean =Crean.find(params[:id])
    if @crean.update(creans_params)
      redirect_to root_path
    else
      render :edit
    end
  end



  private

  def creans_params
    params.permit(:crean_action, :disinfection_action, :other_action, :today_empty_time, :tomorrow_empty_time, :weekend_empty_time).merge(user_id: current_user.id)
  end


end
