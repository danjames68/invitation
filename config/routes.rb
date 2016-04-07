Rails.application.routes.draw do
  
  get 'signup'  => 'users#new'
  get 'signin'  => 'sessions#new'
  
  resources :users, :featureds, :features, :areas, :collections
  
  resource :session

  root "villas#index"
  
  resources :owners do
    resources :contracts
  end
  
  resources :villas do
    resources :types
    resources :wishlist
  end

end
