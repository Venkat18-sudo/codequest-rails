Rails.application.routes.draw do
<<<<<<< HEAD

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  resources:users
  resources:microposts, only: [:create, :destroy]
  get '/signup', to: 'users#new'
  get '/about', to: 'static_pages#about'
  get '/help', to: 'static_pages#help'
  get '/contact', to: 'static_pages#contact_us'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 root 'static_pages#home'
=======
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 root 'application#hello'
>>>>>>> fea79a16629de1290d9058f07d792a9809124d2c
end
