Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'landing_page#index'
  resources :pods, only: [:index, :show] 
  resources :lading_page, only: [:index] 
end
