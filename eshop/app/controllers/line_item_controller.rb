class LineItemController < ApplicationController

  before_action :require_login

  def index
    @cart_items = LineItem.where(:order_id => nil).where(:user_id => @current_user.id)
  end

  def add_cart
    product = Product.find params[:id]
    line = LineItem.create :product_id => product.id, :quantity => 1, :user_id => @current_user.id, :unit_tax => 0
    if product.on_sale?
      line.unit_cost = product.price_sale
    else
      line.unit_cost = product.price_regular
    end
    unless product.tax_applies == false
      business = Business.find product.business_id
      line.unit_tax = line.unit_cost - (line.unit_cost * (1 - (1 / (1 + business.tax_rate))))
    end
    line.save
    if params[:page] == 'index'
        redirect_to products_path
    else
        redirect_to product_path(params[:id])
    end
  end

  def change_qty
    line = LineItem.find params[:id]
    change = params[:sign]
    line.quantity += change.to_i
    line.save
    if line.quantity == 0
        line.destroy
    end
    redirect_to cart_path
  end

  def destroy
    line = LineItem.find params[:id]
    line.destroy
    redirect_to cart_path
  end

  private

  def require_login
    unless @current_user.present?
      flash[:error] = "Please login to add contents to your shopping cart"
      redirect_to login_path
    end
  end

end
