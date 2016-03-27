class ProductsController < ApplicationController
  def index
    @products = Product.all
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

  private
  def product_params
    params.require(:product).permit(:name, :image, :inventory, :unit_cost_price, :description, :price_regular, :tax_applies, :price_sale, :on_sale, :business_id)
  end
end
