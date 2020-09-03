Rails.application.routes.draw do
  get 'roll_results/index'

  resources :roll_results do
    resources :dices
  end
  
  root 'roll_results#index'
end