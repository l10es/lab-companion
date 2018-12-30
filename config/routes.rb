Rails.application.routes.draw do
  get 'mypage/index'
  put 'icons/update' => "icons#update" 
  
  devise_for :members
  get 'members', :to => 'members#index', :as => :member_root
  get 'members/icon' => 'members#icon'
  get 'post/icon' => 'post#icon'

  resources :members
  resources :categories
  resources :posts
  resources :todos
  resources :grades
  resources :statuses
  resources :room_statuses
  resources :roles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome/index'

  root to: 'welcome#index'
end
