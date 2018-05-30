Rails.application.routes.draw do
  get 'tasks' => 'tasks#index'
  get 'tasks/new' => 'tasks#new'
  get 'tasks/1' => 'tasks#show', :id => "1"
  get 'tasks/1/edit' => 'tasks#edit', :id => "1"
  post 'tasks' => 'tasks#create'
  put 'tasks/1' => 'tasks#update', :id => "1"
  patch 'tasks/1' => 'tasks#update', :id => "1"
  delete 'tasks/1' => 'tasks#destroy', :id => "1"
end
