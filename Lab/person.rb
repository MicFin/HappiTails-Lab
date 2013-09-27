class Person
  attr_accessor :name, :age, :num_pets

  def initialize(name, age, num_pets)
    @name = name
    @age = age
    @num_pets = num_pets
    @pets = {}
  end

  def pets
    @pets
  end
 
  def delete_pet(animal_name)
    @pets.delete(animal_name)
  end
  
end