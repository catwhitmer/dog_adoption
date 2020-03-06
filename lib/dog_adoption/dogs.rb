class DogAdoption::Dogs 
  attr_accessor :name, :dog_description, :url 
  
  @@all = []
  
  def initialize(name,url)
    @name = name 
    @dog_description = []
    @url = "https://bestfriends.org" + url 
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
end