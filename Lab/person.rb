require_relative 'animal'

class Person
  attr_accessor :name, :age, :num_pets, :pets 

  def initialize(name, age, num_pets)
    @name = name
    @age = age
    @num_pets = num_pets.to_i
    @pets = {}
  end

  def add_pet(pet)
    @num_pets += 1
    @pets[pet.name] = pet
  end
 
  def delete_pet(animal_name)
    @num_pets -= 1
    @pets.delete(animal_name.name)
  end

  def to_s
    "#{name} is #{age} years old and has #{num_pets} pets. #{show_pets}"
  end

  def show_pets
    client_pets = []
    if @pets.count >= 1
      @pets.each {|key, value| client_pets << key}
      "#{name}'s pets are #{client_pets.join(", ")}."
    else
      "#{name} currently has no pets."
    end
  end

end