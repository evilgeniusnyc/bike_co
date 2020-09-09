class UserBikesController < ApplicationController
    def index
        @user_bikes = UserBike.all
    end

    def show
        @user_bikes = UserBike(params[:id])
    end
      
    private

    def user_bike_params
        params.require(:user_bike).permit(:name, :department_id)
    end
end