Rails.application.routes.draw do
  root 'articles#index'
  get '/articles', to: 'articles#index' #se chegar uma url /articles - direcione ela para CONTROLLER#ACTION
  get "up" => "rails/health#show", as: :rails_health_check

end
