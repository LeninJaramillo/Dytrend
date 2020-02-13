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

    def destroy
        sale = Sale.find(params[:id])
        if current_user == sale.user
            sale.destroy
            redirect_to "/sales"
            flash[:notice] = "You have destroyed your sale"
        else
            redirect_back(fallback_location: root_path)
            flash[:alert] = "Not authorized to delete sales of this user"
        end
    end

    def edit
        @sale = Sale.find(params[:id])
        if current_user != @sale.user
        flash[:alert] = "Unauthorized request"
        end
    end

    def update
        @sale = Sale.find(params[:id])
        if current_user == @sale.user
            @sale.update(sale_params)
            redirect_to @sale
            flash[:notice] = "Update succesful"
        else
            redirect_back(fallback_location: root_path)
            flash[:alert] = "Not authorized to update"
        end
    end

    private
    def sale_params
        params.require(:sale).permit(:kind, :gender, :brand, :description, :price, :pic, :size)
    end
end