class DepartmentsController < ApplicationController
    def index
        @departments = Department.all
    end

    def show
        render template: "departments/#{params[:department]}"
          end
        end
    end

    def new
    end

    def create
    end 

    def edit 
    end 

    def update 
    end 

    def destroy
    end 
end
