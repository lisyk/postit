PostitTemplate::Application.routes.draw do
  root to: 'posts#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/register', to: 'users#new'

  resources :posts, except: [:destroy] do
    resources :comments, only: [:create]
    member do
      post 'vote'
    end
  end

  resources :categories, only: [:new, :create, :show]
  resources :users, only: [:show, :create, :edit, :update]


end
