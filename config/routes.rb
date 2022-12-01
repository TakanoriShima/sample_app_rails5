Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'todolists#index' 
  get 'top' => 'homes#top'
  get 'todolists' => 'todolists#index'
  get 'todolists/new'
  post 'todolists' => 'todolists#create'
  get 'todolists/:id' => 'todolists#show', as: 'todolist' # .../todolists/1 や .../todolists/3 に該当する
  get 'todolists/:id/edit' => 'todolists#edit', as: 'edit_todolist'
  patch 'todolists/:id' => 'todolists#update', as: 'update_todolist'
end
