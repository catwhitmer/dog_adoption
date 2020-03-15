class DogAdoption::Dog
  attr_accessor :name, :url
  attr_reader :dog_description
  
  @@all = []
  
  def initialize(name,url)
    @name = name 
    @url = "https://bestfriends.org" + url 
    @dog_description
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
end