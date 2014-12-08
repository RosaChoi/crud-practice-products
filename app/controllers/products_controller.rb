class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def new
    @products = Product.new
  end

  def create
    @product = Product.create(product_params)

    redirect_to @product, notice: "Product created successfully"
  end

  def show
  end

  def edit
  end

  def update
    @product.update(product_params)

    redirect_to @product, notice: "Product was successfully updated"

  end

  private
  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price)
  end

end
