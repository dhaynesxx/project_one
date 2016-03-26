class OrdersController < ApplicationController
  def index
  end

  def new
      @cart_items = LineItem.where(:order_id => nil).where(:user_id => @current_user.id)
      order = Order.create
      @cart_items.each do |item|
          item.order_id = order.id
          item.save
      end
      redirect_to order_path(order.id)
  end

  def edit
  end

  def show
    @order = Order.find params[:id]
    @purchased_items = LineItem.where(:order_id => @order.id)
  end


end
