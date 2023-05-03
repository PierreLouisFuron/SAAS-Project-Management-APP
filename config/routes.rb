Rails.application.routes.draw do
  resources :members
  get 'home/index'

  root to: "home#index"

  as(:user) do
    match '/user/confirmation' => 'milia/confirmations#update', via: :put, as: :update_user_confirmation
  end

  devise_for(:users)
end
