Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#home'
  resources :cocktails do
    resources :doses, only: [ :new, :create ]
  end
end
