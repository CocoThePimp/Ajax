Rails.application.routes.draw do
  devise_for :users

  resources :tasks, except: [:show]

  root to: "emails#index"
  resources :emails

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
