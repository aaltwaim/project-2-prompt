Rails.application.routes.draw do
  root 'coins#index'
  resources :coins
  get "coins", to: "coins#index"
  get "coins/new", to: "coins#new"
  # get "coins/:id", to: "coins#show", as: :coin
  post "coins", to: "coins#create"
  get "coins/:id/edit", to: "coins#edit", as: :coins_edit
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
