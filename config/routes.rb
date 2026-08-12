Rails.application.routes.draw do
  resources :homes, only: %i[index]
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check
  root 'homes#index'
end
