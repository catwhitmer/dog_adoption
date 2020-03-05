class DogAdoption::Dogs 
  attr_accessor :name, :breed, :age, :gender, :description, :url 
  
  @@all = []
  
  def initialize(name, url)
    @name = name 
    @breed = breed
    @age = age
    @gender = gender
    @description = description
    @url = url 
    @@all << self 
    @dogs = []
  end
  
  def self.all 
    @@all 
  end
  
end