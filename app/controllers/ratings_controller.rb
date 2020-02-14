class RatingsController < ApplicationController
    def new
        @rating = Rating.new
    end

    def create
        @rating = Rating.new(rate_params)
        @rating.user_buyer_id = current_user.id
        @rating.user_seller_id = params[:user_id]
       
        if @rating.save
            redirect_to "/users/#{@rating.user_seller_id}"
            flash[:notice] = "You have rated"
        end
        puts @rating.errors
    end

    private
    def rate_params
        params.require(:rating).permit(:rating, :description)
    end
end
