
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
    @@all.detect {|dog| dog.breed == breed}
  end
  
  def get_details
    if self.description.nil?
       DogAdoption::Scraper.scrape_dogs_details(self)
     end
   end
   
   def self.all_details
     self.all.each do |dog|
       dog.get_details
     end
   end
end