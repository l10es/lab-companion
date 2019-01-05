Rails.application.routes.draw do
  get 'icons/register'
  get 'about_us/index'
  get 'mypage/index', :to => 'mypage#index', :as => :member_root
  put 'icons/update' => "icons#update"
  put 'backgrounds/update' => "backgrounds#update"
  get 'mypage/icon' => 'mypage#icon'
  get 'members/icon' => 'members#icon'
  get 'todos/icon' => 'todos#icon'
  get 'posts/icon' => 'posts#icon'
  get 'statuses/icon' => 'statuses#icon'
  get 'room_statuses/icon' => 'room_statuses#icon'
  get 'categories/icon' => 'application#icon'
  get 'rorles/icon' => 'roles#icon'
  get 'icons/icon' => 'icons#icon'
  get 'grades/icon' => 'grades#icon'
  get 'mypage/background' => 'mypage#background'
  get 'members/background' => 'members#background'
  
  devise_for :members, controllers: {
    #sessions: 'members/sessions'
  }

  get 'members', :to => 'members#index'
  get 'members/icon' => 'members#icon'

  devise_scope :member do
    get 'devise/registrations/icon' => 'devise/registrations#icon'
    get 'devise/passwords/icon' => 'devise/passwords#icon'
  end

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
  get '*path', controller: 'application', action: 'render_404'
end
