Rails.application.routes.draw do
  resources :homes, only: %i[index]
  devise_for :users, controllers: {
    sessions: "user/sessions",
    confirmations: "user/confirmations",
    passwords: "user/passwords",
    unlocks: "user/unlocks",
    omniauth_callbacks: "user/omniauth_callbacks",
    registration_callbacks: "user/registration_callbacks",
  }, path: "login"

  get "up" => "rails/health#show", as: :rails_health_check
  root 'homes#index'
end
