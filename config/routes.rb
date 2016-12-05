Rails.application.routes.draw do
  resources :contacts
  root 'welcome#home'
  get '/projects' => 'welcome#projects'
  get '/about' => 'welcome#about'
  get '/thoughts' => 'welcome#thoughts'
end
