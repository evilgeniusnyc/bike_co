class ProjectManagersController < ApplicationController
    def index
        @project_managers = ProjectManagers.all
     end
end
