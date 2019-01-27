Rails.application.routes.draw do
  get 'games/index'

  devise_for :players
  resources :games
  resources :game_players, only: [:update]
  resources :players, only: [:show]
  root 'games#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
