
require_relative 'person'


class Shelter
  attr_accessor :name, :address

  def initialize(name, address)
    @name = name
    @address = address
    @clients = {}
    @animals = {}
  end

  def add_animal(animal)
    @animals[animal.name] = animal
  end

  def add_client(client)
    @clients[client.name] = client
  end

  def delete_animal(animal_name)
    @animals.delete(animal_name.name)
  end

  def delete_client(client_name)
    @clients.delete(client_name.name)
  end

  def to_s
    "The #{name} shelter is located at #{address}.\n#{show_clients} \n#{show_animals}"
  end

  def show_animals
    if @animals.count >= 1
      shelter_animals = []
      @animals.each {|key, value| shelter_animals << key}
      "The current animals in the shelter are #{shelter_animals.join(", ")}."
    else
      "There are currently no animals in the shelter."
    end
  end

  def show_clients
    if @clients.count >= 1
      shelter_clients = []
      @clients.each {|key, value| shelter_clients << key}
      "The current clients at the shelter are #{shelter_clients.join(", ")}."
    else
      "No clients have joined the shelter."
    end
  end    

 

end