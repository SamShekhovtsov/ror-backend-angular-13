Rails.application.routes.draw do

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/websocket'

  root 'welcome#index'
  resources :blogs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
