# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Language.create([
	{name: "Ruby", percent_understood: 48},
	{name: "Java", percent_understood: 68},
	{name: "Python", percent_understood: 85},
	{name: "MySQL", percent_understood: 58},
	{name: "C", percent_understood: 65},
	{name: "JavaScript", percent_understood: 38},
	{name: "C++", percent_understood: 25},
	{name: "Racket", percent_understood: 33},
	{name: "Android", percent_understood: 51},
	{name: "Git", percent_understood: 72},
	])