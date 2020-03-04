class DogAdoption::Scraper 
  
  def self.scrape(url)
    page = Nokogiri::HTML(open(url))
    page.css("span.animalName")
    
    dogs_array.map.with_index[0] do |dog|
      puts "#{name}" 
    end 
  end
  
  def self.scrape_dog
    dogs_array = []
    dog = self.new
    dog.name = 
    dog.breed =
    dog.age =
    dog.size = 
    dog.color = 
    dog.gender =
    dog.url = https://bestfriends.org/adopt/adopt-our-sanctuary/dogs
    #array of dogs
  end

end
