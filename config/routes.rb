Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations"}
  root to: "sales#index"
  resources :sales
  resources :users do 
    resources :ratings
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
