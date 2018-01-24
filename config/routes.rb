Rails.application.routes.draw do
  get 'tags/:tag', to: 'posts#index', as: :tag
  resources :posts
end
