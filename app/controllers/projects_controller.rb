class ProjectsController < ApplicationController
    def index
        #byebug 
        @projects = Project.all
    end

    def show
        @project = Project.find(params[:id])
    end

    def new
      @project = Project.new
    end

    def create
      @project_params = Project.create(project_params)
      redirect_to project_path(@project)
    # end 

    def edit 
       @project = Project.find(params[:id])
    end 

    def update 
      @project = Project.find(params[:id])
      @project.update(project_params)
      redirect_to project_path(@project)
    end 

    # def destroy
    # end 

    private
    def project_params
      params.require(:project).permit(:budget, :development_stage)
    end
  end
end

