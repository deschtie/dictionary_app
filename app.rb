require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
# require('./lib/definition')

get('/') do
  erb(:index)
end