Rails.application.routes.draw do
  resources :posts
  resources :contacts
  root 'welcome#home'

  get '/work' => 'welcome#work'
  get '/services' => 'welcome#services'
  get '/blog' => 'posts#index'
  get '/contact' => 'contacts#new'
end
