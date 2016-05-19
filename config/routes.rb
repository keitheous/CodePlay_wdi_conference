Rails.application.routes.draw do


# ============= normal controller =============
  resources :tickets
  resources :events
  resources :speakers
  resources :users
  resources :charges

  get '/' => 'homes#index'


  #============ api controller ================
  namespace :api do
    resources :tickets
    resources :events
    resources :speakers
    resources :users
  end

  get '/login' => 'sessions#loginpage'
  post '/login' => 'sessions#login'
  delete '/logout' => 'sessions#logout'
end
