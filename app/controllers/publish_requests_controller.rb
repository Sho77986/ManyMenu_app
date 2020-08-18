class PublishRequestsController < ApplicationController


  def index
  end

  def create
    @publish_request =PublishRequest.new(publish_requests_params)
    if @publish_request.save
      redirect_to root_path
    else
      render :index
    end
  end



  private

  def publish_requests_params
    params.permit(:publish_text, :image_a, :image_b, :image_c, :image_d, :image_e,:image_f, :image_g, :image_h, :image_i, :image_j).merge(user_id: current_user.id)
  end
end
