# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

trip_list = ['Grand Canyon', 'Baha Peninsula', 'Chamonix', 'West Water Canyon']

trip_list.each do |trip_name|
  Trip.create!(trip_name: trip_name)
end