TaskTracker::Application.routes.draw do
 root 'taskss#index'
 resources :tasks
end
