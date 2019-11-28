Rails.application.routes.draw do
  resources :game_cards
  resources :cards
  resources :games
  resources :players
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
