Rails.application.routes.draw do
  resources :status_works
  devise_for :users
  root 'page#index'
  resources :collaborators
  resources :projects
  resources :tasks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
