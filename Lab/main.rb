require 'pry'

require_relative 'data'
# Create a shelter
# $shelter_1 = Shelter.new('HappiTails', '10 east 21st Street')

# # Create a client
# bob = Person.new('Bob', 22, 0)
# sue = Person.new('Sue', 31, 0)
# jill = Person.new('Jil', 46, 0)
# sam = Person.new('Sam', 87, 0)

# # Create an animal
# spot = Animal.new('Spot', 3, 'male', 'Dog')
# lassy = Animal.new('Lassy', 2, 'female', 'Dog')
# jonesy = Animal.new('Jonesy', 1, 'male', 'Dog')
# molly = Animal.new('Molly', 5, 'female', 'Cat')
# fido = Animal.new('Fido', 8, 'male', 'Dog')
# scrunchy = Animal.new('Scrunchy', 12, 'male', 'Dog')
# chow = Animal.new('Chow', 2, 'female', 'Cat')
# rux = Animal.new('Rux', 3, 'male', 'Dog')
# antsy = Animal.new('Antsy', 1, 'male', 'Cat')
# #com alt left sq

# Add a client to the shelter

$shelter_1.add_client($bob)
$shelter_1.add_client($sue)
$shelter_1.add_client($jill)
$shelter_1.add_client($sam)
$shelter_1.add_client($sam)


# Add an animal to the shelter
$shelter_1.add_animal($spot)
$shelter_1.add_animal($lassy)
$shelter_1.add_animal($jonesy)
$shelter_1.add_animal($molly)
$shelter_1.add_animal($antsy)

# Add pet to a client
$bob.add_pet($fido)
$sue.add_pet($scrunchy)
$sam.add_pet($chow)
$sam.add_pet($rux)

# Add toy to an animal 
$spot.add_toy("Bone")
$lassy.add_toy("Chew Toy")
$lassy.add_toy("Frisbee")
$jonesy.add_toy("treats")
$molly.add_toy("Rope")
$fido.add_toy("hat")
$rux.add_toy("news paper")
$rux.add_toy("chewy thing")
$rux.add_toy("ball")
#scrunchy.add_toy("diaper")
$fido.add_toy("tennis ball")

# Delete a toy from an animal
$lassy.delete_toy("Chew Toy")

# Delete animal from the shelter
$shelter_1.delete_animal($spot)

# Delete client from the shelter
$shelter_1.delete_client($jill)

# Delete animal from a client
$sam.delete_pet($chow)

# Shelter give animal to a client
$bob.add_pet($lassy)
$shelter_1.delete_animal($lassy)
$sue.add_pet($jonesy)
$shelter_1.delete_animal($jonesy)
$sue.add_pet($molly)
$shelter_1.delete_animal($molly)

# Client give animal to the shelter
$shelter_1.add_animal($scrunchy)
$sue.delete_pet($scrunchy)

# Show shelter total info
# puts $shelter_1

# # Show animals in the shelter
# puts $shelter_1.show_animals

# # Show clients in the shelter
# puts $shelter_1.show_clients

# # Show client total info
# puts jill

# # Show a client's pets
# puts sue.show_pets

# # Show a pet's total info
# puts scrunchy

# # Show a pet's toys
# puts scrunchy.show_toys



# # INITIAL PROMPT FOR GAME
puts "\nWelcome to the HappiTails Shelter!!!!!!"
begin_game_choice = ""
# until begin_game_choice == "exit"
until begin_game_choice == "exit"
 puts "\nIf you'd like to take a look around then please take a second to [see] what is going on at the shelter.  When you are ready, please choose to play as the [shelter] manager or as a pet [owner]. Oh and if you're grouchy then the [exit] is that way!"
begin_game_choice = gets.chomp.downcase
case begin_game_choice
  when "see"
    puts
    puts $shelter_1
    view_characters = ""
    until view_characters == "begin"
      puts "\nWould you like to learn more about [Bob], [Sue], or [Sam]? Or, maybe you would prefer to learn more about [Antsy] or [Scrunchy]? If not then just [begin] your journey at HappiTrails Shelter."
      view_characters = gets.chomp.downcase
      case view_characters
        when "bob"
          puts
          puts bob
          puts "\nWould you like to know more about Fido and Lassy? (yes or no)"
          pet_info = gets.chomp.downcase
          if pet_info == "yes"
            puts
            puts fido
            puts lassy
          end
        when "sue"
          puts
          puts sue
          puts "\nWould you like to know more about Jonesy and Molly? (yes or no)"
          pet_info = gets.chomp.downcase
          if pet_info == "yes"
            puts
            puts jonesy
            puts molly
          end
        when "sam"
          puts
          puts sam
          puts "\nWould you like to know more about Rux? (yes or no)"
          pet_info = gets.chomp.downcase
          if pet_info == "yes"
            puts
            puts rux
          end
        when "antsy"
          puts
          puts antsy
        when "scrunchy"
          puts
          puts scrunchy
      end
    end
 
  when "shelter" ## Create game from shelter view

  when "owner" ## Create game from pet owner view 
    puts "Would you like to play as [Bob], [Sue], [Sam] or a [new] pet owner?"
    choose_player = gets.chomp.downcase
    if choose_player == "new"
      puts "What is your player's name?"
      new_name = gets.chomp
      puts "How old is your player?"
      new_age = gets.chomp
      puts "How many pets does your player have?"
      new_num_pets = gets.chomp.to_i
      new_player = Person.new(new_name, new_age, new_num_pets)
    #if new_num_pets > 0
    for i in (1..new_num_pets) do 
      puts "What is pet #{i}'s name?"
      new_pet_name = gets.chomp 
      puts "What is pet #{i}'s species?"
      new_pet_species = gets.chomp
      puts "What is pet #{i}'s age?"
      new_pet_age = gets.chomp 
      puts "What is pet #{i}'s gender?"
      new_pet_gender = gets.chomp
      new_pet = Animal.new(new_pet_name, new_pet_age, new_pet_gender, new_pet_species)
      end

    #end
    end
  
end

end
 abort"\nGoodbye" 




# # NEW CLIENT
# new_name = gets.chomp
# new_age = gets.chomp
# new_num_pets = gets.chomp
# new_person = Person.new(new_name, new_age, new_num_pets)

# # NEW PET - if new_num_pets > 0
# new_pet_name = gets.chomp 
# new_pet_age = gets.chomp 
# new_pet_gender = gets.chomp
# new_pet_species = gets.chomp
# new_toy = gets.chomp
# new_pet = Animal.new(new_pet_name, new_pet_age, new_pet_gender, new_pet_species)

# # CLIENT ACTIONS BEFORE JOINING SHELTER
# # 1. Join shelter
#   $shelter_1.add_client(new_person)
# # 2. Add/Delete pets
#     # Add will need to prompt for info again
#   new_person.add_pet(new_pet)
#     # Delete
#     # Will need to ask what pet to delete
#   new_person.delete_pet(new_pet)
# # 3. Add/Delete toys
#     # Add 
#     # Will need to ask what animal
#   new_pet.add_toy(new_toy)
#     # Delete
#     # Will need to ask what animal
#     # Will need to ask what toy to delete
#   new_pet.delete_toy(new_toy)

###### as client
# ### view pets, add/remove toys, add/remove pets, donate/adopt pets, donate toys, trade/give/recieve pets, trade/give/recieve toys

###### as a shelter 
# view clients, add/remove clients, view pets, add/remove pets, give/recieve pets, add/remove toys, recieve toys





