Rails.application.routes.draw do
  resources :tasks
  resources :programmers
  resources :projects
  resources :project_managers
  resources :departments
  resources :user_bikes


# edit
# update 
# destroy 

  # get "/tasks", to: "tasks#index", as: "tasks"
  # get '/tasks/new', to: 'task#new', as: 'new_task'
  # post '/tasks', to: 'tasks#create'
  # #get '/tasks/:id', to: 'tasks#show', as: 'tasks'

  # get "/programmers", to: "programmers#index", as: "programmers"
  # get '/programmers/new', to: 'programmer#new', as: 'new_programmer'
  # post '/programmers', to: 'programmers#create'
  # #get '/programmers/:id', to: 'programmers#show', as: 'programmers'

  # get "/projects", to: "projects#index", as: "projects"
  # get '/project/new', to: 'project#new', as: 'new_project'
  # post '/projects', to: 'projects#create'
  # #get '/projects/:id', to: 'projects#show', as: 'projects'

  # get "/project_managers", to: "project_managers#index", as: "program_managers"
  # get '/program_manager/new', to: 'program_manager#new', as: 'new_program_manager'
  # post '/project_managers', to: 'project_managers#create'
  # #get '/project_managers/:id', to: 'project_managers#show', as: 'project_managers'

  # get "/departments", to: "departments#index", as: "departments"
  # get '/departments/new', to: 'departments#new', as: 'new_department'
  # post '/depatments', to: 'departments#create'
  # #get '/departments/:id', to: 'departments#show', as: 'departments'

  # get '/user_bikes', to: 'user_bikes#index', as: 'user_bikes'
  # get '/user_bikes/new', to: 'user_bike#new', as: 'new_user_bike'
  # post '/user_bikes', to: 'user_bikes#create'
  # #get '/user_bikes/:id', to: 'user_bikes#show', as: 'user_bikes'

end 


#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

