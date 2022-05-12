class Item < ApplicationRecord
  belongs_to :cart

  def self.total
    quantity_price = pluck(:quantity, :price).to_h
    total = 0
    quantity_price.each do |quantity, price|
      total += quantity*price
    end
    total
  end

  def sub_total
    price * quantity
  end
end
