Rails.application.routes.draw do
  root 'movies#index'

  resources :movies, only: [:index, :show] do
    resources :showtimes, only: [:show]
  end

  resources :orders

  get '/movie/:id/orders' => 'orders#movie_order_review', as: 'movie_order_review'
end
