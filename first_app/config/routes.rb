Rails.application.routes.draw do
  get 'utilities/pick_lucky_numbers'
  get 'utilities' => 'utilities#index'
  get 'utilities/get_stock_info'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  #get '/' => 'home#index'
  
  get '/animals/cat' => 'animals#cat'
  get '/animals/dog' => 'animals#dog'
  get '/animals/index' => 'animals#index'
  
  get '/movie' => 'movies#index'
  get '/movie/1' => 'movies#movies1' 
  get '/mvoie/2' => 'movies#movies2'
  
  get '/musics' => 'musics#index'
  get '/musics/1' => 'musics#music_1'
  get '/musics/2' => 'musics#music_2'
  get '/musics/3' => 'musics#music_3'
end
