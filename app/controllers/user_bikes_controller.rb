class UserBikesController < ApplicationController
    def index
        @user_bikes = UserBike.all
     end
end
