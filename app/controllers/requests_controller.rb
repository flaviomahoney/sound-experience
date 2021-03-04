class RequestsController < ApplicationController
    def index
        @requests = Request.all
    end

    def create
        @request = Request.new(request_params)
        @product = Product.find(params[:product_id])
        @request.product = @product
        if @request.save
            redirect_to products_path
        else
            flash[:alert] = "Something went wrong"
        end
    end

    private

    def request_params
        params.require(:request).permit(:quantity)
    end
end
