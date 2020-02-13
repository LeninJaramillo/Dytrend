class RatingsController < ApplicationController
    def new
        @rating = Rating.new
    end

    def create
        @rating = Rating.new
        @rating.user_buyer.id = current_user
        if @rating.save
            redirect_to "/"
            "/users/#{@rating.user_buyer.id}"
            flash[:notice] = "You have rated"
        end
    def
end
