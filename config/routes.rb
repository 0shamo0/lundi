Rails.application.routes.draw do
  root 'page#index'
  resources :collaborators
  resources :projects
  resources :tasks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
