Rails.application.routes.draw do
  resources :loans
  resources :books
  root 'home#index'
  get 'home/about'

  get 'search',to:"books#search"
  get 'about_book',to:"home#about_book"
  get 'preview',to:"home#book_preview"
  get 'admin',to:"admin#admin"

  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create"
  get "password/reset/edit", to: "password_resets#edit"
  get "password/reset/edit", to: "password_resets#update"

  

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  
  resources :users do
    collection { post :import }
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
