Rails.application.routes.draw do
  scope :api, defaults: { format: :json } do
    devise_for :users, controllers: { sessions: :sessions },
                      path_names: { sign_in: :login }
    
  resource :user, only: [:show, :update]
  end

  root 'pages#index'

  namespace :api do
    namespace :v1 do 
      resources :tutors, param: :slug
      resources :reviews, only: [:create, :destroy]
    end
  end

  get '*path', to: 'pages#index', via: :all
end
