Rails.application.routes.draw do

  namespace :admin do
    resources :donor_accounts
    resources :inbound_accounts
    resources :outbound_accounts
    resources :swear_costs
    resources :swear_libraries
    resources :swear_logs
    resources :user_bank_accounts
    resources :user_cost_settings
    resources :user_swear_libraries
    resources :users

    root to: "users#index"
  end

  devise_for :users
  root to: 'users/sessions#new'

  get "swear_logs/swear_test" => 'swear_logs#swear_test'
  post "log_swear" => 'swear_logs#log_swear'
  
end
