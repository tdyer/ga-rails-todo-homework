Todo::Application.routes.draw do
 root 'todos#index'
 resources :todos
end