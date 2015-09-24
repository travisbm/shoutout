Rails.application.routes.draw do

  resources :users do
    resources :shouts
  end

  resources :shouts

  root "shouts#index"
end
