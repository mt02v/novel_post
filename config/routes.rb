Rails.application.routes.draw do
  devise_for :users
  root 'novels#index'
  resources :novels do
    resources :comments, :only => [:create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
end
