Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get '/handbags/:id', to: 'handbags#update'

  namespace :api do
    namespace :v1 do
      resources :handbags
      resources :collectors
     
    end
  end
end
