Rails.application.routes.draw do
  devise_for :users
  resources :auctions
  resources :collectibles
  get 'pages/private_page'
  root "pages#home"

  resources :collectibles do 
  resources :auctions
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
