class SalesController < ApplicationController
    def index
        @sales = Sale.all
    end

    def show
        @sale = Sale.find(params[:id])
    end

    def new
        @sale = Sale.new
    end

    def create
        @sale = Sale.new(sale_params)
        @sale.user_id = current_user.id
        if @sale.save
            redirect_to @sale
            flash[:notice] = "GREAT your article is for sale!"
        else
            redirect_back(fallback_location: root_path)
            flash[:alert] = "Something went wrong..! Try again"
        end
    end

    

    private
    def sale_params
        params.require(:sale).permit(:kind, :gender, :brand, :description, :price, :pic)
    end
end