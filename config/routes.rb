CookbookApp::Application.routes.draw do
  get '/login', to: 'sessions#new'

  resources :sessions, only: [:create, :destroy]

  resources :users
  resources :ingredients do
    collection do
      match 'search' => 'ingredients#search', :via => [:get, :post], :as => :search
    end
  end
  resources :recipes do
    collection do
      match 'search' => 'recipes#search', :via => [:get, :post], :as => :search
    end
  end
  resources :categories

  root to: 'recipes#index'

end
