Rails.application.routes.draw do

  scope :api, defaults: { format: :json } do
    devise_for :users, controllers: { sessions: :sessions },
                      path_names: { sign_in: :login }
    
  resource :user, only: [:show, :update]
  resources :sessions, :only => [:create, :destroy]
  end

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end


  root 'pages#index'

  namespace :api do
    namespace :v1 do 
      resources :tutors, param: :id
    end
  end

  get '*path', to: 'pages#index', via: :all
end
