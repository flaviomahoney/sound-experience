class ProductsController < ApplicationController
    def index
        @products = Product.all
    end

    def show
        @product = Product.find(params[:id])
        @request = Request.new
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

    def edit
        @product = Product.find(params[:id])
    end

    def update
        @product = Product.find(params[:id])
        if @product.update(product_params)
          flash[:success] = "Object was successfully updated"
          redirect_to @product
        else
          flash[:error] = "Something went wrong"
          render 'edit'
        end
    end

    def destroy
      @product = Product.find(params[:id])
      if @product.destroy
        flash[:success] = 'Object was successfully deleted.'
        redirect_to products_url
      else
        flash[:error] = 'Something went wrong'
        redirect_to products_url
      end
    end
    
    
    

    private

    def product_params
        params.require(:product).permit(:short_description, :description)
    end
    
end
