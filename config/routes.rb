# This is a custom route for returning a book.

Rails.application.routes.draw do
  resources :books do
    resources :borrowings, only: [:new, :create]
  end
  patch '/borrowings/:id/return', to: 'borrowings#return', as: 'return_borrowing'
  root 'books#index'
end
