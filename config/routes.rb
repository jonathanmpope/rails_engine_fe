Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/merchants/find_all', to: 'merchant_search#index'
  resources :merchants, only: [:index, :show] do 
    resources :items, controller: :merchant_items, only: [:index]
  end 

  resources :items, only: [:index, :show]

 
end
