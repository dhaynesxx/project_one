class ProductsController < ApplicationController
  def index
    @products = Product.all
    unless params[:id].nil?
        id = params[:id]
        new_line(id)
    end
  end

  def new_line(id)
    product = Product.find id
    line = LineItem.create :product_id => product.id, :quantity => 1, :unit_cost => product.price_regular, :user_id => @current_user.id, :unit_tax => 0
    unless product.tax_applies == false
      business = Business.find product.business_id
      line.unit_tax = product.price_regular - (product.price_regular * (1 - (1 / (1 + business.tax_rate))))
      line.save
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

  def add_cart
    id = params[:id]
    new_line(id)
    redirect_to product_path(id)
  end

  private
  def product_params
    params.require(:product).permit(:name, :image, :inventory, :unit_cost_price, :description, :price_regular, :tax_applies, :price_sale, :on_sale, :business_id)
  end
end
