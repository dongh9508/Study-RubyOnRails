Rails.application.routes.draw do
  get 'comments/create'

  get 'comments/destroy'

  root 'home#index'
  
  get 'home/index'

  get 'home/new'

  post 'home/create' => 'home#create'
  #post 'home/create'
  
  get 'home/destroy/:post_id' => 'home#destroy'
  
  post 'home/update/:post_id' => 'home#update'
  
  get 'home/edit/:post_id' => 'home#edit'
  
  post '/posts/:post_id/comments/create' => 'comments#create'
  
  get '/posts/:post_id/comments/:comments_id' => 'comments#destroy'
  
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
