class Person
  attr_accessor :name, :num_children, :age, :num_pets

  def initialize(name, num_children, age, num_pets)
    @name = name
    @num_children = num_children
    @age = age
    @num_pets = num_pets
    @pets = []
  end

  #method to adpot an animal
  #method to put an animal up for adoption
end