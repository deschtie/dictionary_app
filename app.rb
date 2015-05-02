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


get('/words/new') do
  erb(:words_form)
end

get('/words') do
  @words = Word.all()
  erb(:words)
end

post('/definitions/new') do
  @words = Word.all()
  erb(:definitions_form)
end

# get('/definitions/:id') do
#   @definition = Definition.find(params.fetch('id'))
#   erb(:definition)
# end

# get('/words/:id') do
#   @word = Dealership.find(params.fetch('id').to_i())
#   erb(:word)
# end

# get('/words/:id/definitions/new') do
#   @dealership = Dealership.find(params.fetch('id').to_i())
#   erb(:dealership_vehicles_form)
# end

# post('/vehicles') do
#   make = params.fetch('make')
#   model = params.fetch('model')
#   year = params.fetch('year')
#   @vehicle = Vehicle.new(make, model, year)
#   @vehicle.save()
#   @dealership = Dealership.find(params.fetch('dealership_id').to_i())
#   @dealership.add_car(@vehicle)
#   @vehicles = @dealership.cars()
#   erb(:vehicles)
# end