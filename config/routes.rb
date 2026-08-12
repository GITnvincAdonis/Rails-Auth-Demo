Rails.application.routes.draw do
  resources :homes, only: %i[index]
  devise_for :users, controllers: {
    sessions: "users/sessions",
    confirmations: "users/confirmations",
    passwords: "users/passwords",
    unlocks: "users/unlocks",
    omniauth_callbacks: "users/omniauth_callbacks",
    registrations: "users/registrations",
  }, path: "login"

  get "up" => "rails/health#show", as: :rails_health_check
  root 'homes#index'
end
