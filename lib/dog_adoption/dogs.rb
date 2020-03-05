class DogAdoption::Dogs 
  attr_accessor :name, :breed, :age, :gender, :description, :url 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @age = age
    @breed = breed
    @gender = gender
    @description = description
    @url = url 
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
end