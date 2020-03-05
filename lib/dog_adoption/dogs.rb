class DogAdoption::Dogs 
  attr_accessor :name, :age, :gender, :description, :url 
  
  @@all = []
  
  def initialize(name, url)
    @name = name 
    @age = age
    @gender = gender
    @description = description
    @url = "https://bestfriends.org" + url 
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
end