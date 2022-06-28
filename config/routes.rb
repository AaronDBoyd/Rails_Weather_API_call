Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/' => 'weather#index'
  get '/' => 'weather#index'
  get '/results' => 'weather#index'

  root to: 'weather#index'
  resources :weather
end
