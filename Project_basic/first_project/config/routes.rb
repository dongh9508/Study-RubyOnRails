Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
  #get '/home' => 'home#index'
  
  post "/home/attack" => "home#attack"
  #get "home/attack"
  #get "home/attack", to: "home#attack"
  get "/home/defense" => "home#defense"
  
end
