Rails.application.routes.draw do
  devise_for :members
  resources :post_categories
  resources :post_statuses
  resources :posts
  resources :todos
  resources :member_grades
  resources :member_statuses
  resources :room_statuses
  resources :roles
  resources :members
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "welcome#index"

  get 'post', :to => 'post#index', :as => :member_root 
end
