class ReportsController < ApplicationController
    before_action :authorise

def inventory
    products = Product.all
    @product_inventory_awaiting_delivery =[]
    orders_awaiting_delivery = Order.where(:shipped_date => nil )
    products.each do |product|
        quantity = 0
        orders_awaiting_delivery.each do |order|
            items = LineItem.where(:order_id => order.id).where(:product_id => product.id)
            quantity += items.sum(:quantity)
        end
        @product_inventory_awaiting_delivery.push(quantity)
    end
    @products = Product.all
end

def purchase

end

private

def authorise
  redirect_to root_path unless (@current_user.present? && @current_user.admin?)
end

end
