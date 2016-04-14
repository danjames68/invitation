Rails.application.routes.draw do
  
  root "villas#index"

  get 'signup'  => 'users#new'
  get 'signin'  => 'sessions#new'
  get 'make_contract'  => 'contracts#make_contract'
  
  resources :users, :featureds, :features, :areas, :collections, :owners, :rates, :contracts 
  
  resource :session
  
  resources :villas do
    resources :types
    resources :wishlist
  end

end
