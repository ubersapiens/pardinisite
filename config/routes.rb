Rails.application.routes.draw do
  root 'welcome#home'
  resources :user_sessions
  resources :users
  resources :posts
  resources :contacts

  get '/work'  => 'welcome#work'
  get '/admin'  => 'user_sessions#new'

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout
  get 'blog' => 'posts#index'
  get 'contact' => 'contacts#new'
end
