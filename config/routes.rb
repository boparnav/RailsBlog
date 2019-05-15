Rails.application.routes.draw do


  devise_for :users
  get 'posts/Dashboard'
root to: "posts#index"
  resources :posts

  get 'delete/post/:id' , to: 'posts#destroy'




end
