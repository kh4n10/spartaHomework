# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Below is a set of hashes for the company and models
ferrari = Company.create({
	name: 'Ferrari',
	established: 1939,
	description: 'Beuatifully crafted Italian whips'
	})

mercedes = Company.create({
	name: 'Mercedes',
	established: 1926,
	description: 'German precision, canny go wrong bruh'
	})

model_1 = Model.create ({
	engine_size: 4499,
	name: 'Ferrari 458',
	sold: 300
	})


model_2 = Model.create ({
	engine_size: 4700,
	name: 'Ferrari F50',
	sold: 349
	})

model_3 = Model.create ({
	engine_size: 5400,
	name: 'Mercedes SLR',
	sold: 800
	})

model_4 = Model.create ({
	engine_size: 4000,
	name: 'Mercedes GTR',
	sold: 400
	})

# This pushes the specified models into the relevant companies
ferrari.models.push(model_1)
ferrari.models.push(model_2)
ferrari.save

mercedes.models.push(model_3)
mercedes.models.push(model_4)
mercedes.save

