Rails.application.routes.draw do
  
  

  resources :areas

  resources :collections

  root "villas#index"
  
  resources :villas do
    resources :types
  end

end
