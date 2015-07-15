Rails.application.routes.draw do
  root 'movies#index'
  resources :movies do
    resources :showtimes, only: [:show]
  end
  resources :orders

  get '/movie/:id/orders' => 'orders#review', as: 'movie_order_review'
end
