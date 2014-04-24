HoursOfHappiness::Application.routes.draw do

 root to: 'pages#home'

 match '/home', { :via => :get, :to => 'pages#home' }
end
