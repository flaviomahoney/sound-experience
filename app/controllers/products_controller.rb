class ProductsController < ApplicationController
    def index
        @products = Product.all
    end

    def show
        @product = Product.find(params[:id])
    end

    def new
        @product = Product.new
    end

    def create
        @product = Product.new(product_params)
        if @product.save
          flash[:success] = "product successfully created"
          redirect_to @product
        else
          flash[:error] = "Something went wrong"
          render 'new'
        end
    end

    private

    def product_params
        params.require(:product).permit(:short_description, :description)
    end
    
end
