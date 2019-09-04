Rails.application.routes.draw do

get '/', to: 'albums#index'
  resources :albums, only: [ :show, :new, :create ]
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
