class OrdersController < ApplicationController
  before_action :authorise

  def index
    unless @current_user.admin?
        @orders = Order.where(:user_id => @current_user.id)
    end
    if params[:id].present?
        @orders = Order.where(:user_id => params[:id])
    else
        @orders = Order.all
    end
  end

  def new
      @cart_items = LineItem.where(:order_id => nil).where(:user_id => @current_user.id)
      order = Order.create :user_id => @current_user.id
      total_price = 0
      total_tax = 0
      @cart_items.each do |item|
          product = Product.find item.product_id
          product.inventory -= item.quantity
          product.save
          item.order_id = order.id
          item.save
          total_price += (item.unit_cost * item.quantity)
          total_tax += (item.unit_tax * item.quantity)
      end
      order.total_cost = total_price
      order.total_tax = total_tax
      order.purchase_date = DateTime.now
      order.save
      redirect_to order_path(order.id)
  end

  def edit
    @order = Order.find params[:id]
    @purchased_items = LineItem.where(:order_id => @order.id)
  end

  def show
    @order = Order.find params[:id]
    @purchased_items = LineItem.where(:order_id => @order.id)
  end

  def update
    order = Order.find params[:id]
    order.update order_params
    redirect_to order_path(order.id)
  end

private
def authorise
  redirect_to root_path unless (@current_user.present?)
end

def order_params
  params.require(:order).permit(:purchase_date, :payment_date, :shipped_date, :finalised_date)
end

end
