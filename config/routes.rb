Rails.application.routes.draw do
  
  resources :featureds

  resources :features

  resources :areas

  resources :collections

  root "villas#index"
  
  resources :villas do
    resources :types
  end

end
