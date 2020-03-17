
class DogAdoption::Dog
  attr_accessor :name, :url, :breed, :age, :size, :color, :gender, :description, :details
  
  @@all = []
  
  def initialize(name,url)
    @name = name 
    @url = "https://bestfriends.org" + url 
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
  def self.find_by_breed(breed)
    @@ll.detect {|dog| dog.breed == breed}
  end
  
end