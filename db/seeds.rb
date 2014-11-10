# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

TVShow.create([
	{ name: 'Shark Tank', description: 'The Sharks -- tough, self-made, multi-millionaire and billionaire tycoons ', image: 'http://cdn.media.abc.com/m/images/global/generic/shows_1x1-hirez/shark-tank.jpg', day: 'Friday', time: '9pm', channel: 'ABC'},
	{ name: 'Brooklyn Nine-Nine', description: 'Jake Peralta, an immature but talented NYPD detective in Brooklyns 99th Precinct, ', image: 'http://ia.media-imdb.com/images/M/MV5BNDkzNjkwMDk2Ml5BMl5BanBnXkFtZTgwMDMyMDczMDE@._V1_SX640_SY720_.jpg', day: 'Sunday', time: '8:30pm', channel: 'Fox' }
])