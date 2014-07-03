Rails.application.routes.draw do

  get 'reviews/index'
  get 'reviews', to: 'reviews#index'

  get 'home/index'

  root 'home#index'
end
