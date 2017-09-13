Rails.application.routes.draw do
  resources :questions do
      resources :answers do
        member do
          get 'toggle', as: :toggle
        end
      end
    end
  get 'pages/welcome'

  root 'pages#welcome'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
