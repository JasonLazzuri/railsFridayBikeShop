Rails.application.routes.draw do

  get 'reviews/index'

  get 'reviews/show'

root :to => 'welcome#index'
devise_for :users

resources :products do
  resources :reviews

  end
end
