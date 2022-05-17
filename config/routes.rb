Rails.application.routes.draw do
  root 'posts#index'

  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users

  get 'login' => 'user_sessions#new'
  post 'login' => "user_sessions#create"
  delete 'logout' => 'user_sessions#destroy'
end
