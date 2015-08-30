Rails.application.routes.draw do
  devise_for :users
  root to: 'page#home'
  get '/the-proposal', to: 'page#proposal'
  get '/the-wedding', to: 'page#wedding'
  get '/galleries', to: 'page#gallery'
  get '/field-notes', to: 'page#field_notes'

  resources :posts, except: :index
end
