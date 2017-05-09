Rails.application.routes.draw do

  resources :movies do
    resources :showings
  end

  resources :cinemas

  get '/showings' => 'showings#all_shows'

end
