Rails.application.routes.draw do
  root 'articles#index'
#  get '/articles', to: 'articles#index' #se chegar uma url /articles - direcione ela para CONTROLLER#ACTION
#  get '/articles/:id', to: 'articles#show' #Indicar no show o id do article e abre o show - cria no controller tbm app\controllers\articles_controller.rb

  resources :articles

  get "up" => "rails/health#show", as: :rails_health_check

end
