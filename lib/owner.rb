require 'pry'

class Owner
  # code goes here
  @@all = []
  @@count = 0
  
  attr_accessor :count, :name, :pets
  attr_reader :species
  
  def initialize(species)
    @species = species
    @pets = {}
    
    @@all << self
    @@count += 1
  end
  
  def self.all 
    @@all
  end
  def self.count
    @@count
  end
  def self.reset_all
    @@count = 0
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def pets
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  binding.pry
  def buy_fish
    # binding.pry
    @pets[:fishes] << Fish.new(name)
    # binding.pry
    # self.pets[:fishes]
    # Fish.name
  end
  
  
  
end