Rails.application.routes.draw do
  resources :contacts
  root 'welcome#home'

  get '/work' => 'welcome#work'
  get '/services' => 'welcome#services'
end
