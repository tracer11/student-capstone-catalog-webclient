Rails.application.routes.draw do
  get '/' => 'capstones#index'
  get '/capstones/:id' => 'capstones#show'
end
