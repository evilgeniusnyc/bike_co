class ProgrammersController < ApplicationController
    def index
        @programmers = Programmer.all
    end

    def show
        @programmer = Programmer.find(params[:id])
    end

    def new
        @parammer = Programmer.new
    end

    def create
        @programmer = Programmer.create(programmer_params)
        redirect_to programmer_path(@programmer)
    end 

    def edit 
     @programmer = Programmer.find(params)[:id]
    end 

    def update 
        @programmer = Programmer.find(params[:id])
        @programmer.update(programmer_params)
        redirect_to programmer_path(@programmer)
    end 

    # def destroy
    # end 
end
