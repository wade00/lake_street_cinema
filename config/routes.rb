Rails.application.routes.draw do
  resources :movies do
    resources :showtimes, only: [:show]
  end
  resources :orders
end
