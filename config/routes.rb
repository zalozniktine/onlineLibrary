Rails.application.routes.draw do
  resources :loans
  resources :books
  root 'home#index'
  get 'home/about'

  get 'search',to:"books#search"
  get 'about_book',to:"home#about_book"
  get 'preview',to:"home#book_preview"
  get 'admin',to:"admin#admin"
  

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  
  resources :users do
    collection { post :import }
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
