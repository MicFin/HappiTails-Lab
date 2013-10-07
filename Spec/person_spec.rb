require 'spec_helper'
require_relative '../Lab/person'
require_relative '../Lab/animal'

describe Person do 
  let(:animal) {Animal.new('Jones', 4, 'male', 'dog')}
  subject {Person.new('Tom', 42, 0) }

  # checks if adopt method works
  it "should be able to adopt a pet" do
    subject.add_pet(animal).should eq animal
  end

  # nesting a describe
  describe "A person added a pet" do

    # creates a person with a pet to then do the following tests # shorthand
    before do 
      subject.add_pet(animal)
    end
    # # long hand
    # subject do 
    #   p = Person.new("abby", 31, 2)
    #   p.adopt(animal)
    #   p
    # end

    # checks if adopt method adds an animal to the persons array of pets
    it "should add an animal to the Persons pets" do  
      subject.pets.size.should eq 1
    end

    # checks if adopt method increases the persons pets count
    it "should increase the Persons pets count" do 
      subject.num_pets.should eq 1
    end

    # checks if show pets method works with a pet
    it "should show pets user name" do 
      subject.show_pets.should eq "Tom's pets are Jones."
    end

     # checks if to_s method works with a pet
    it "should show clients name, age, num pets, and pet name" do 
      subject.to_s should eq "Tom is 42 and has 1 pets. Tom's pets are Jones."
    end
  end

  it "should be able to delete a pet" do
    subject.delete_pet(animal).should eq animal
  end

  
  describe "A person deleted a pet" do

    # creates a person with a pet to then do the following tests # shorthand
    before do 
      subject.add_pet(animal)
      subject.delete_pet(animal)
    end

    # checks if delete method removes a pet
    it "should delete an animal to the Persons pets" do  
      subject.pets.size.should eq 0
    end

    # checks if delete method increases the persons pets count
    it "should decrease the Persons pets count" do 
      subject.num_pets.should eq 0
    end

    #checks if show pets works with no pets
    it "should show user has no pets" do 
      puts subject.show_pets.should eq "Tom currently has no pets."
    end

    # checks if to_s method works with no pet
    it "should show clients name, age, num pets, and pet name" do 
      puts subject should eq "Tom is 42 and has 0 pets. Tom currently has no pets."
    end
  end


end


