HoursOfHappiness::Application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  match '/home', { :via => :get, :to => 'pages#home' }
  resources :places
  resources :happy_hours
  resources :ratings
end
