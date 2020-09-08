class ProjectsController < ApplicationController
    def index
        #byebug 
        @projects = Project.all
    end

    def show
        @project = Project.find(params[:id])
    end

    def new
    end

    # def create
    #     @_project_params = params.require(:project).permit(:
    # end 

    def edit 
    end 

    def update 
    end 

    def destroy
    end 

    private
    def project_params
      params.require(:project).permit(:budget, :development_stage)
    end
  end

