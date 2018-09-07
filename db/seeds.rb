# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do |project|
	Project.create(Title: "Project number #{project}", 
		Description: "If we list all the natural numbers below 10 that are multiples 
		of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
		Find the sum of all the multiples of 3 or 5 below 1000.
		If we list all the natural numbers below 10 that are multiples 
		of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
		Find the sum of all the multiples of 3 or 5 below 1000.
		If we list all the natural numbers below 10 that are multiples 
		of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
		Find the sum of all the multiples of 3 or 5 below 1000.
		If we list all the natural numbers below 10 that are multiples 
		of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
		Find the sum of all the multiples of 3 or 5 below 1000.
		If we list all the natural numbers below 10 that are multiples 
		of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
		Find the sum of all the multiples of 3 or 5 below 1000.")
end

10.times do |code|
	Problem.create(name: "Problem number #{code}", 
		from: "Project Euler",
		description: "If we list all the natural numbers below 10 that are multiples 
		of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
		Find the sum of all the multiples of 3 or 5 below 1000.If we list all the natural numbers below 10 that are multiples 
		of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
		Find the sum of all the multiples of 3 or 5 below 1000.If we list all the natural numbers below 10 that are multiples 
		of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
		Find the sum of all the multiples of 3 or 5 below 1000.If we list all the natural numbers below 10 that are multiples 
		of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
		Find the sum of all the multiples of 3 or 5 below 1000.If we list all the natural numbers below 10 that are multiples 
		of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
		Find the sum of all the multiples of 3 or 5 below 1000.If we list all the natural numbers below 10 that are multiples 
		of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
		Find the sum of all the multiples of 3 or 5 below 1000.",
		code: "sadiofjaoisdjfiodsjafiodj
		sadfiodjasfiodjasfoij
		fghdfughouho = shf oasidjf ")
end


10.times do |code|
	Language.create(name: "Language number #{code}", 
		percent_understood: 54)
end