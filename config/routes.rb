Rails.application.routes.draw do

  #一覧画面へのルーティング
  get '/users', to:'users#index'
  #新規登録画面へのルーティング
  get '/users/new', to: 'users#new'
  #新規登録
  post '/users', to: 'users#create'
  #編集画面へのルーティング
  get '/users/:id/edit', to: 'users#edit'
  #更新を行うためのルーティング
  patch '/users/:id', to: 'users#update'
  #削除を行うルーティング
  delete '/users/:id', to:'users#destroy'
end
