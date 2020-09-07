Rails.application.routes.draw do

  get '/user_bikes', to: 'user_bikes#index', as: 'user_bikes'
  # resources :tasks
  # resources :programmers
  # resources :projects
  # resources :project_managers
  # resources :departments
  # resources :user_bikes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
