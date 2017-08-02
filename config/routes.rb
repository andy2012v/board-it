Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'

  resources :users, only: [:show, :destroy, :index]

  namespace :admin do
    root 'admins#index'
  end
end
