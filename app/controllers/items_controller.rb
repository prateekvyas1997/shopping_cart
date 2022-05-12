class ItemsController < ApplicationController
  before_action :set_cart, only: [:index]
  before_action :set_item, only: [:destroy, :change_quantity]

  def index
    @items = @cart.items
  end

  def destroy
    @item.destroy
    redirect_to :cart_items
  end

  def change_quantity
    @item = Item.find(params[:id])
    if ActiveModel::Type::Boolean.new.cast(params[:increase])
      @item.update(quantity: @item.quantity + 1)
    else
      @item.update(quantity: @item.quantity - 1)
    end

    redirect_to :cart_items
  end

  private 

  def set_cart
    @cart = Cart.find(params[:cart_id])
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
