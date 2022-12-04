Rails.application.routes.draw do
  # get 'search_analytic/index'
  # get 'searches/create'
  # root 'search_analytics#index'
  root 'search_analytics#index'
  resources :searches
  resources :search_analytic
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
