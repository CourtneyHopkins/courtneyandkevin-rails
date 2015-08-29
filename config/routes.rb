Rails.application.routes.draw do
  root to: 'page#home'
  get '/the-proposal', to: 'page#proposal'
  get '/the-wedding', to: 'page#wedding'
  get '/galleries', to: 'page#gallery'
  get '/field-notes', to: 'page#field_notes'
end
