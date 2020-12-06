Rails.application.routes.draw do
  devise_for :users

  resources :cocktails do
    resources :doses, only: [:new, :create]
  end

  root to: "cocktails#index"
end
