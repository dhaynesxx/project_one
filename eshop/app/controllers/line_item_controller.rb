class LineItemController < ApplicationController

  def index
    @cart_items = LineItem.where(:order_id => nil).where(:user_id => @current_user.id)
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

end
