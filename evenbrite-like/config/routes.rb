Rails.application.routes.draw do
  get  'sessions/new'
  root 'static_pages#home'
  get  '/about',   to: 'static_pages#about'
  get  'new', to: 'user#new', as: 'new'
  post 'create', to: 'user#create', as:'create'
  get  'show',   to: 'user#show', as: 'show'
  get  '/login',   to: 'sessions#new', as: 'loginnew'
  post '/login',   to: 'sessions#create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
