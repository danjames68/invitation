Rails.application.routes.draw do
  
  root "villas#index"

  get 'signup'  => 'users#new'
  get 'signin'  => 'sessions#new'
  
  resources :users, :featureds, :features, :areas, :collections, :owners
  
  resource :session

  resources :rates
  
  resources :villas do
    resources :contracts 
    resources :types
    resources :wishlist
  end

end
