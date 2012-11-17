class ReceiptsController < ApplicationController
  def new
    @receipt = Receipt.new
  end
  def create
    r = Receipt.new

    receipt = params[:receipt]
    r.name = receipt[:name]
    r.restaurant = Restaurant.find(receipt[:restaurant_id])
    orders = receipt[:orders]
    orders.each do |order|
      o = Order.new
      o.amount = order[:amount]
      o.dish = Dish.find(order[:dish])
      r.orders << o
    end

    r.save
    redirect_to new_receipt_path
  end
end
