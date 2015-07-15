Rails.application.routes.draw do
  resources :movies do
    resources :showtimes, only: [:show]
  end
  resources :orders

  get '/movie/:id/orders' => 'orders#review', as: 'movie_order_review'
end
