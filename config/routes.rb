Rails.application.routes.draw do
  resources :books
  devise_for :users
  root 'home#index'
  get 'home/about'

  get 'search',to:"books#search"
  get 'home/book',to:"home#book"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
