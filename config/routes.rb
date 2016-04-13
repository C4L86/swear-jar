Rails.application.routes.draw do

  namespace :admin do
    
    root to: "#index"
  end

  devise_for :users
  
  root to: "home#index"
  
end
