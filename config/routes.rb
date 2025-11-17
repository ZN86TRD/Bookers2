Rails.application.routes.draw do

  devise_for :users
  
  root to: "homes#top"

  get "homes/about" => "homes#about", as: "about"

  #resourcesメソッド onlyオプション
  resources :books, only: [:create, :edit, :update, :index, :show, :destroy]
  resources :users, only: [:show, :edit, :update, :index]


end
