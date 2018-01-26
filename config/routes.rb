Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  get 'tags/:tag', to: 'posts#index', as: :tag
  resources :posts
  resources :services
  get 'subscribers/index'
  root to: "pages#home"
end
