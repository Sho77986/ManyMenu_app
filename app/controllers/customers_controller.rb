class CustomersController < ApplicationController


  def index
  end

  def create
    @customer =Customer.new(customers_params)
    if @customer.save
      redirect_to  root_path
    else
      redirect_to  root_path
    end
  end



  private

  def customers_params
    params.permit(:image, :comment)
  end
end
