require './config/environment'

LiteCable.config.log_level = Logger::DEBUG

app = Rack::Builder.new do
  map '/' do
    run Hanami.app
  end
end

if ENV['ANYCABLE']
  # Turn AnyCable compatibility mode
  LiteCable.anycable!
else
  require './chat'
  require 'lite_cable/server'

  app.map '/cable' do
    use LiteCable::Server::Middleware, connection_class: Chat::Connection
    run proc { |_| [200, { 'Content-Type' => 'text/plain' }, ['OK']] }
  end
end

run app
