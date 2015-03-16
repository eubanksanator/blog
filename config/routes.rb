Rails.application.routes.draw do


  devise_for :admins

  resources :posts do
    resources :comments
  end

  root 'posts#index'
  get '/about', to: 'posts#about'

end
