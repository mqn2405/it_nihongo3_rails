Rails.application.routes.draw do
  resources :boo_k_reviews
  resources :bookreviews
  resources :book_reviews
  get 'users/show'
  get 'static_pages/home'
  devise_for :users
  devise_for :models
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
