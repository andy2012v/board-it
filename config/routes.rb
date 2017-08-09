Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'

  resources :users, only: [:show, :destroy, :index]

  resources :languages, only: [:show] do
    resources :exercises, only: [:show]
  end


  resources :interview_questions, only: [:index]

  resources :practice, only: [:index]

  resources :expect, only: [:show]

  resources :helpful, only: [:show]

  namespace :admin do
    root 'admins#index'
  end

  namespace :api do
    namespace :v1 do
      resources :langauges, only: [:show]
    end
  end


end
