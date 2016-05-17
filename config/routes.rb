Rails.application.routes.draw do
  resources :users
  resources :tickets
  resources :events
  resources :speakers

  get '/' => 'home#index'

end
