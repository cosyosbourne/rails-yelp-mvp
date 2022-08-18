Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :restaurants, only: %I[index new create show destroy]

  resources :restaurants do
    resources :reviews, only: %I[new create]
  end
end
