Rails.application.routes.draw do

  #resourcesメソッド onlyオプション
  resources :books, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :edit]

  devise_for :users

  root to: "homes#top"

  get "homes/about" => "homes#about", as: "about"

end
