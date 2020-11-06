Rails.application.routes.draw do
  resources :reviews
  resources :birth_controls
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # root to: "birth_controls#index"
end
