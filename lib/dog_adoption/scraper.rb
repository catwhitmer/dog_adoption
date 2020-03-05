class DogAdoption::Scraper 
  
  def self.scrape(url)
    doc = Nokogiri::HTML(open(url))
    url = "https://bestfriends.org/adopt/adopt-our-sanctuary/dogs"
    page.css("span.animalName")
    
    dogs = []
    
    
      
    dogs_array.map.with_index[0] do |dog|
      name = page.css("h2.heading-2").text.strip
      breed =
      age =
      gender =
      description =
      dogs_info = 
      {
        name: name,
        breed: breed,
        age: age,
        gender: gender,
        description: description
      }
       dogs << dogs_info
  end
 end
end