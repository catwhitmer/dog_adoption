class DogAdoption::Dogs 
  attr_accessor :name, :breed, :age, :size, :color, :gender, :url 
  
  @@all = []
  
  def initialize(name, url)
    @name = name 
    @breed = breed
    @age - age
    @size = size
    @color = color 
    @gender =gender
    @url = url 
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
end