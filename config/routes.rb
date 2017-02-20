Rails.application.routes.draw do
  root 'welcome#home'
  resources :user_sessions
  resources :users
  resources :posts
  resources :contacts

  namespace :admin do
    get '', to: 'dashboard#index', as: '/'
  end

  namespace :work do
    get '', to: 'projects#index', as: '/'
    get '/ocoffeeshop', to: 'projects#ocoffeeshop'
    get '/sportme', to: 'projects#sportme'
    get '/pardinilaw', to: 'projects#pardinilaw'
    get '/businesspanama', to: 'projects#businesspanama'
    get '/coursparticuliers', to: 'projects#coursparticuliers'
    get '/marcheducafe', to: 'projects#marcheducafe'
    get '/ocpfinance', to: 'projects#ocpfinance'
    get '/cineventure', to: 'projects#cineventure'
    get '/bureauspot', to: 'projects#bureauspot'
  end

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout
  get 'blog' => 'posts#index'
  get 'contact' => 'contacts#new'
end
