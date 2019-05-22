Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/index'
  get 'reviews/create'
  resources :restaurants, only: %i[index show new create] do
    resources :reviews, only: %i[new create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
