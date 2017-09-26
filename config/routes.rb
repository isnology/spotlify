Rails.application.routes.draw do
  resources :plays
  resources :songs
  resources :artists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
