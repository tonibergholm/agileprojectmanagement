ActionController::Routing::Routes.draw do |map|
  map.resources :entities

  map.resources :hours

  map.resources :tasks

  map.resources :stories

  map.resources :roles

  map.resources :members

  map.resources :sprints

  map.resources :releases

  map.resources :projects

  map.resource :account, :controller => "users"
  map.resources :password_resets
  map.resources :users  
  map.resource :user_session
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  map.root :controller => "user_sessions", :action => "new"
end
