Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'flats#index'
  # origin root of the web app

  get 'flats/:id', to: 'flats#show'


end
