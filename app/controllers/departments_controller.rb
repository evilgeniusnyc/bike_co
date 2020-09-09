class DepartmentsController < ApplicationController
    def index
        @departments = Department.all
    end

    def show
        @department = Department.find(params[:id])
    end

    def new
        @department= Department.new 
    end

    def create
        @department_params = params.require(:task).permit(:programmer_id, :project_id)
        @department = Department.create(@department_params)
        redirect_to_department_path(@department)
    end 

    def edit 
        @department= Department.find(params[:id])
    end 

    def update
        @department = Department.find(params[:id])
        @department.update(department_params)
        redirect_to department_path(@department)
    end

    private
  def task_params
    params.require(:department).permit(:name)
  end
end
    

