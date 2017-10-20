Rails.application.routes.draw do
  root 'posts#index'
  # redundante, :resources substitui essas 8 rotas || as = path
  get '/posts', controller: 'posts', action:'index', as: 'posts'
  post '/posts', controller: 'posts', action: 'create'
  get '/posts/new', controller: 'posts', action: 'new', as: 'new_post'
  get '/posts/:id/edit', controller: 'posts', action: 'edit', as: 'edit_post'
  get '/posts/:id', controller: 'posts', action: 'show', as: 'post'
  patch '/posts/:id', controller: 'posts', action: 'update'
  put '/posts/:id', controller: 'posts', action: 'update'
  delete '/posts/:id', controller: 'posts', action: 'destroy'
end