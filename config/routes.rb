Rails.application.routes.draw do
  resources :artifacts

  resources :tenants do 
    resources :projects
  end
  resources :members
  get 'home/index'

  root to: "home#index"

  as(:user) do
    match '/user/confirmation' => 'confirmations#update', via: :put, as: :update_user_confirmation
  end

  devise_for :users, :controllers => {
    :confirmations => "confirmations",
    :registrations => "registrations"
    # :sessions => "XXXX",
    # :passwords => "XXX" 
  }
end
