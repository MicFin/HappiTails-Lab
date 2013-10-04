require 'spec_helper'
require_relative '../Lab/person'
require_relative '../Lab/animal'

describe Person do 
  let(:animal) {Animal.new('Jones', 4, 'male', 'dog')}
  subject {Person.new('Tom', 42, 0) }

  # checks if adopt method works
  it "should be able to adopt a pet" do
    subject.adopt(animal).should eq animal
  end

  # nesting a describe
  describe "A person added a pet" do

    # creates a person with a pet to then do the following tests # shorthand
    before do 
      subject.adopt(animal)
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
  end

end




end