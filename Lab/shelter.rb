class Shelter
  attr_accessor :name, :address

  def initialize(name, address)
    @name = name
    @address = address
    @clients = {}
    @animals = {}
  end

  def animals
    @animals 
  end

  def clients
    @clients
  end

  def delete_animal(animal_name)
    @animals.delete(animal_name)
  end

  def delete_client(client_name)
    @clients.delete(client_name)
  end


end