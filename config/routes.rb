Rails.application.routes.draw do
  resources :books
  devise_for :users
  root 'home#index'
  get 'home/about'

  get 'search',to:"books#search"
  get 'about_book',to:"home#about_book"
  get 'preview',to:"home#book_preview"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
