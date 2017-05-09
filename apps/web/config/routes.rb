# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }

get '/', to: 'home#index', as: :home
get '/sign_in', to: 'users#login', as: :login
post '/users', to: 'users#create'
post '/rooms', to: 'rooms#create'
get '/rooms/:id', to: 'rooms#show', as: :room
