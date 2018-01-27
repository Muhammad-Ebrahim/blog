Rails.application.routes.draw do
  devise_for :admins
  mount Ckeditor::Engine => '/ckeditor'
  get 'tags/:tag', to: 'posts#index', as: :tag
  resources :posts
  resources :services
  get 'subscribers/index'
  root to: "pages#home"
  resources :about
end
