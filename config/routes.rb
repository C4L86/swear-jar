Rails.application.routes.draw do

  namespace :admin do
    resources :donor_accounts
    resources :swear_costs
    resources :swear_libaries
    resources :swear_logs
    resources :user_bank_accounts
    resources :user_swear_libraries
    resources :users

    root to: "users#index"
  end

  devise_for :users
  
  root to: "home#index"
  
end
