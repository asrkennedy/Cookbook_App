CookbookApp::Application.routes.draw do
  get '/login', to: 'sessions#new'

  resources :sessions, only: [:create, :destroy]

  resources :users
  resources :ingredients
  resources :recipes
  resources :categories

  root to: 'recipes#index'

end
