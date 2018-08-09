Rails.application.routes.draw do
  root 'notes#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #Create
  get '/notes/new' => 'notes#new'
  post '/notes' => 'notes#create'
  #Read
  get '/notes' => 'notes#index'
  get '/notes/:id' => 'notes#show'
  #Update
  get '/notes/:id/edit' => 'notes#edit'
  patch '/notes/:id' => 'notes#update'
  
  #Destroy
  delete '/notes/:id' => 'notes#destroy'
end
