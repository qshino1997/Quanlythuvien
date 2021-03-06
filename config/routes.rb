Rails.application.routes.draw do
  resources :indentifies
  resources :books
  get  '/themmoi',  to: 'books#new'

  resources :borrow_details
  get  '/nhandangmoi',  to: 'indentifies#new'

  resources :borrows
  resources :catogaries
  get  '/loaimoi',  to: 'catogaries#new'

  get 'sessions/new'
  get  '/signup',  to: 'users#new'
  post  '/signup', to: 'users#create'
  get 'static_pages/home'
  get 'static_pages/help'
  get    '/login',   to: 'sessions#login'
  post   '/login',   to: 'sessions#logining'
  delete '/logout',  to: 'sessions#logout'
  resources :users
  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
