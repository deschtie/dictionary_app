require('sinatra')
# require('sinatra/reloader')
# also_reload ('lib/**/*.rb')
require('./lib/word')
require('./lib/definition')
set :bind, '0.0.0.0'
set :port, '3000'

get('/') do
  erb(:index)
end
