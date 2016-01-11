require('sinatra')
require('sinatra/reloader')
require('./lib/parcel')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/parcel') do

  length = params.fetch('length')
  width = params.fetch('width')
  height = params.fetch('height')
  weight = params.fetch('weight')
  miles = params.fetch('miles')
  @parcel = Parcel.new(length, width, height, weight).cost_to_ship(miles)
  # 
  # @gift_wrapped = @parcel + @parcel.wrapping()
  #
  # wrapped = params.fetch('wrapping')
  erb(:parcel)
end
