Rails.application.routes.draw do
  resources :contacts
  root 'welcome#home'
  get 'welcome/work'
end
