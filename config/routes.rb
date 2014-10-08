Rails.application.routes.draw do
  devise_for :users
  # get 'posts/index'
  # get 'posts/show'
  # get 'posts/new'
  # get 'posts/edit'
  resources :posts


  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end
