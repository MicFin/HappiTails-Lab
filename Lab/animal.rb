class Animal
  attr_accessor :name, :age, :gender, :species

  def initialize(name, age, gender, species)
    @name = name
    @age = age
    @gender = gender
    @species = species
    @toys = []
  end

  def add_toy(toy)
    @toys << toy
  end

  def delete_toy(toy)
    @toys.delete(toy)
  end 

  def to_s
    "#{name} is a #{age} year old #{gender} #{species}. #{show_toys}"
  end

  def show_toys
    if @toys.count >= 1
      "#{name} loves playing with its #{@toys.join(", ")}."
    else
      "#{name} currently has no toys to play with."
    end
  end

end



