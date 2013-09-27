require 'pry'

require_relative 'shelter'
require_relative 'person'
require_relative 'animal'


# Create a shelter
shelter_1 = Shelter.new('HappiTails', '10 east 21st Street')

# Add animal to the shelter
shelter_1.animals['Spot'] = Animal.new('Spot', 3, 'male', 'Dog')
shelter_1.animals['Spot'].toys << 'Bone'
shelter_1.animals['Spot'].toys << 'Chew Toy'
shelter_1.animals['Lassy'] = Animal.new('Lassy', 2, 'female', 'Dog')
shelter_1.animals['Lassy'].toys << 'Frisbee'
shelter_1.animals['Jonesy'] = Animal.new('Sport', 1, 'male', 'Dog')
shelter_1.animals['Jonesy'].toys << 'Treats'


# Delete animal from the shelter
shelter_1.delete_animal('Spot')

# Add client to the shelter
shelter_1.clients['Bob'] = Person.new('Bob', 22, 0)
shelter_1.clients['Sue'] = Person.new('Sue', 31, 2)
shelter_1.clients['Jill'] = Person.new('Jil', 46, 1)
shelter_1.clients['Sam'] = Person.new('Sam', 87, 3)

# Delete client from the shelter
shelter_1.delete_client('Jill')

# Add animal to a client
shelter_1.clients['Bob'].pets['Molly'] = Animal.new('Molly', 5, 'female', 'Cat')
shelter_1.clients['Sue'].pets['Fido'] = Animal.new('Fido', 8, 'male', 'Dog')
shelter_1.clients['Sue'].pets['Scrunchy'] = Animal.new('Scrunchy', 12, 'male', 'Dog')
shelter_1.clients['Sam'].pets['Chow'] = Animal.new('Chow', 2, 'female', 'Cat')
shelter_1.clients['Sam'].pets['Rux'] = Animal.new('Rux', 3, 'male', 'Dog')

# Delete animal from a client
shelter_1.clients['Sam'].delete_pet('Chow')

# Shelter give animal to a client
shelter_1.clients['Bob'].pets['Lassy'] = (shelter_1.delete_animal('Lassy'))

# Client give animal to the shelter
shelter_1.animals['Fido'] = shelter_1.clients['Sue'].delete_pet('Fido')

binding.pry

