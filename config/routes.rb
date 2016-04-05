Rails.application.routes.draw do
  
  get 'signup'  => 'users#new'
  resources :users
  

  resources :featureds

  resources :features

  resources :areas

  resources :collections

  root "villas#index"
  
  resources :villas do
    resources :types
    resources :wishlist
  end

end
