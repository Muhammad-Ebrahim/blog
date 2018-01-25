Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  get 'tags/:tag', to: 'posts#index', as: :tag
  resources :posts
  root to: "pages#home"
end
