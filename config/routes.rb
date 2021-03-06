Rails.application.routes.draw do
      namespace :api do 
          namespace :v1 do 
            resources :users, only: [:create]
            resources :transactions, only: [:create]
            post '/login', to: 'auth#create'
            get '/profile', to: 'users#profile'
            get '/get_user', to: 'auth#show'
          end 
      end
end
