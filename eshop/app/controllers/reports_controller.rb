class ReportsController < ApplicationController
    before_action :authorise

def inventory
    @products = Product.all
    @product_inventory_awaiting_delivery =[]
    orders_awaiting_delivery = Order.where(:shipped_date => nil )
    @products.each do |product|
        quantity = 0
        orders_awaiting_delivery.each do |order|
            items = LineItem.where(:order_id => order.id).where(:product_id => product.id)
            quantity += items.sum(:quantity)
        end
        @product_inventory_awaiting_delivery.push(quantity)
    end
end

def sales
    @products = Product.all
    @line_items = LineItem.all
    @orders = Order.all
end

def profit
  @products = Product.all
  @line_items = LineItem.all
  @orders = Order.all
end

def shipping
  @orders = Order.where(:shipped_date => nil).where.not(:payment_date => nil)
end

def finalise
  @orders = Order.where(:finalised_date => nil).where.not(:shipped_date => nil)
end

private

def authorise
  redirect_to root_path unless (@current_user.present? && @current_user.admin?)
end

end
