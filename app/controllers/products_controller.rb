class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def new
    @products = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.save

    redirect_to @product, notice: "Product created successfully"
  end

  def show
  end

  private
  def set_product
    @products = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price)
  end

end
