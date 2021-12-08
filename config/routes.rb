Rails.application.routes.draw do
  resources :gallery_apis
  
  root to: 'albums#index'
  get 'albums/:id', to:'albums#show', as: 'album'
 
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
