class QrCodesController < ApplicationController

  def index
  end

  def create
    @qr_code =QrCode.new(qr_codes_params)
    if @qr_code.save
      redirect_to root_path
    else
      render :index
    end
  end



  private

  def qr_codes_params
    params.permit(:number_big, :number_small, :text).merge(user_id: current_user.id)
  end
end
