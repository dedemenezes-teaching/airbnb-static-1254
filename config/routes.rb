Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get '/', to: 'flats#index'
  root 'flats#index'

  get '/flats/:id', to: 'flats#show', as: :flat
end
