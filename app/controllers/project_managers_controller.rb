class ProjectManagersController < ApplicationController
    def index
     
        @project_managers = ProjectManager.all

    end

    def show
        @project_manager = ProjectManager.find(params[:id])
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

    private

    def project_manager_params
      params.require(:project_manager).permit(:nick_name, :dob, :bio)
    end
  end

