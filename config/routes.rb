Rails.application.routes.draw do
  resources :monsters, only: [:index, :show]
  resources :tweets, except: [:edit, :update]
  #root "monsters#index"
  root "tweets#index"
end
