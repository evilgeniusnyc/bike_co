class TasksController < ApplicationController
    def index
        @tasks = Task.all
    end

    def show
        @task = Task.find(params[:id])
    end

    def new
        @task = Task.new 
    end

    def create
        @task = Task.create(task_params)

        if @task.valid?
            redirect_to task_path(@task)
        else 
            flash[:errors] = @task.errors.full_messages
           redirect_to new_path
        end 
    end

    def edit 
        @task = Task.find(params[:id])
    end 

    def update
        @task = Task.find(params[:id])
        @task.update(task_params)
        redirect_to task_path(@task)
    end

    def destroy 
        @task = Task.find(params[:id])
        task.destroy
    
    end

    private

    def task_params
        params.require(:task).permit(:name, :description, :programmer_id, :project_id)
    end
end



## Can project_id be a strong param? 