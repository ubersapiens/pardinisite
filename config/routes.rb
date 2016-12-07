Rails.application.routes.draw do
  resources :contacts
  root 'welcome#home'
end
