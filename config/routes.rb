Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'

  resources :user, only: [:show, :index]

  namespace :admin do
    root 'admins#index'
  end
end
