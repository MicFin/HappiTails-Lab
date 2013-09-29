# require the local files where the classes are defined
require 'pry'
require_relative 'animal'
require_relative 'person'
require_relative 'shelter'


# Create a shelter
shelter_1 = Shelter.new('HappiTails', '10 east 21st Street')

# Create a client
bob = Person.new('Bob', 22, 1)
sue = Person.new('Sue', 31, 2)
jill = Person.new('Jil', 46, 0)
sam = Person.new('Sam', 87, 2)

# Create an animal
spot = Animal.new('Spot', 3, 'male', 'Dog')
lassy = Animal.new('Lassy', 2, 'female', 'Dog')
jonesy = Animal.new('Jonesy', 1, 'male', 'Dog')
molly = Animal.new('Molly', 5, 'female', 'Cat')
fido = Animal.new('Fido', 8, 'male', 'Dog')
scrunchy = Animal.new('Scrunchy', 12, 'male', 'Dog')
chow = Animal.new('Chow', 2, 'female', 'Cat')
rux = Animal.new('Rux', 3, 'male', 'Dog')



