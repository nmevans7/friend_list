Rails.application.routes.draw do
  root 'static_friends#home'

  get '/about', to: 'static_pages#about'

  resources :friends
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
