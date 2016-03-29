# == Schema Information
#
# Table name: products
#
#  id              :integer          not null, primary key
#  name            :text
#  inventory       :integer
#  unit_cost_price :float
#  description     :text
#  price_regular   :float
#  tax_applies     :boolean          default(TRUE)
#  price_sale      :float
#  on_sale         :boolean          default(FALSE)
#  business_id     :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  image           :text
#

class ProductsController < ApplicationController
  def index
    if params[:search]
      @products = Product.search(params[:search]).sort
    else
      @products = Product.all.sort
    end
  end

  def new
    @product = Product.new
  end

  def create
    product = Product.find params[:id]
    product.create product_params
    redirect_to product
  end

  def edit
    @product = Product.find params[:id]
  end

  def update
    product = Product.find params[:id]
    product.update product_params
    redirect_to product
  end

  def show
    @product = Product.find params[:id]
  end

  def purchase_stock
    @product = Product.find params[:id]
  end

  def add_stock
    quantity = product_params.first.last.to_f
    cost = product_params.sort[1].last.to_f
    product_existing = Product.find params[:id]
    current_inventory = product_existing.inventory
    current_unit_cost_price = product_existing.unit_cost_price
    total_cost = current_inventory * current_unit_cost_price + quantity * cost
    product_existing.inventory = quantity + current_inventory
    product_existing.unit_cost_price = total_cost / (current_inventory + quantity)
    product_existing.save
    redirect_to product_path
  end


  private
  def product_params
    params.require(:product).permit(:name, :image, :inventory, :unit_cost_price, :description, :price_regular, :tax_applies, :price_sale, :on_sale, :business_id, :search)
  end
end
