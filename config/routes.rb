Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'user#list'

  scope '/users' do
    get '/', to: 'user#list'
    post '/', to: 'user#create'
    get '/new', to: 'user#new'
    get '/:id', to: 'user#get'
    delete '/:id', to: 'user#delete'
  end
end
