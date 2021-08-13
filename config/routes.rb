Rails.application.routes.draw do
  # do we need this?
  #root 'pages#index'

  namespace :api do
    namespace :v1 do 
      resources :tutors, param: :slug
      #resources :reviews, only: [:create, :destroy]
    end
  end

  #get '*path', to: 'pages#index', via: :all
end
