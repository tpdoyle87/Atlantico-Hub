Rails.application.routes.draw do
  resources :prospects, only: :create

  devise_for :users

  resources :users
  resources :priorities, only: :show, as: :priorities

  resources :categories do
    collection do
      patch :sort
      patch :deny
      get :using
    end
  end
  authenticated :user do
    root 'users#show', as: :authenticated_user
  end
  root to: 'pages#home'
end

