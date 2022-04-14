class ProductsController < ApplicationController
  before_action do
    case action_name.to_sym
    when :new, :create
      @product = Product.new
    when :show, :edit, :update, :destroy
      @product = Product.find(params[:id])
    end
  end

  def new
  end

  def create
    @product.assign_attributes(product_params)
    @product.save
  end

  def show
  end

  def index
    @products = Product.all
  end

  private
    def product_params
      params.require(:product).permit(:name, :quantity, :price)
    end
end
