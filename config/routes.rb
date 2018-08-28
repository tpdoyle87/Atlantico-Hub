Rails.application.routes.draw do
  devise_for :users

  resources :users
  resources :priorities, only: :index

  resources :categories do
    collection do
      patch :sort
    end
    collection do
      patch :deny
    end
  end
  authenticated :user do
    root 'users#show', as: :authenticated_user
  end
  root to: 'pages#home'
end

