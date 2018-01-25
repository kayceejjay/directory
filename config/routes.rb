Rails.application.routes.draw do

  root 'static_pages#home'
  
  get '/static_pages' => 'static_pages#home' # /static_pages defaults to home
  
  get 'static_pages/home'

  get 'static_pages/help'
  
  get 'static_pages/about'
  
  get 'static_pages/contact'
  
end