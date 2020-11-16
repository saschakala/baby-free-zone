Rails.application.routes.draw do
  # resources :side_effects

  resources :birth_controls do
    resources :reviews
  end


  # resources :reviews
  resources :birth_controls
  devise_for :users, :controllers => {registrations: 'registrations', omniauth_callbacks: 'callbacks' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "birth_controls#index"
end
 