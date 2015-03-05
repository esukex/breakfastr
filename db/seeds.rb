# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Pastry.create([
	{
		name:"Croissant",
		price_in_pence:350,
		description:"Butter pastry croissant"
	},
	{
		name:"Pan au Chocolat",
		price_in_pence:400,
		description:"Butter pastry with a chocolate filling"
	}
])