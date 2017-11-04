Rails.application.routes.draw do
  resources :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'students#index'
  get '/students/new', to: 'students#new'
  post '/students', to: 'students#create'
end
