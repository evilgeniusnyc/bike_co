class TasksController < ApplicationController
    def index
        @tasks = Task.all
    end

    def show
    end

    def new
        @task = Task.new 
    end

    def create
        @_task_params = params.require(:task).permit(:programmer_id, :project_id)
        @task = Task.create(@task_params)
        redirect_to_task_path(@path.task)
    end 

    # def edit 
    # end 

    # def update 
    # end 

    # def destroy
    # end 
end
