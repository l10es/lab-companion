Rails.application.routes.draw do
  get 'icons/register'
  put "icons/update" => "icons#update" 

  get 'members', :to => 'members#index', :as => :member_root

  devise_for :members
  get "icons/face" => "icons#face" 

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
end
