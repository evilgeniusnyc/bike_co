class UserBikesController < ApplicationController
    def index
        @user_bikes = UserBike.all
    end

    def show
        @user_bikes = UserBike.find(params[:id])
    end
      
 
end
