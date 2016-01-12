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
  # parcel = @parcel
  # @gift_wrapped = parcel.to_f + parcel.to_f.wrapping()
  #
  # if params.fetch("yes")
  #   return @gift_wrapped
  # else
  #   return @parcel
  # end
  erb(:parcel)
end
