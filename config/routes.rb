ActionController::Routing::Routes.draw do |map|
  map.resources :entities
  map.resources :hour_entries
  map.resources :tasks
  map.resources :stories
  map.resources :roles
  map.resources :members
  map.resources :sprints
  map.resources :releases
  map.resources :projects
  map.resources :password_resets
  map.resources :users  
  map.resource :user_session
  map.resource :account, :controller => "users"
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  map.root :controller => "user_sessions", :action => "new"
end
