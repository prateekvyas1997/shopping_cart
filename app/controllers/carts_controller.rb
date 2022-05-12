class CartsController < ApplicationController
  def index
    @carts = Cart.all
  end

  def destroy
    Cart.find(params[:id]).destroy
    redirect_to :carts
  end
end
