class DogAdoption::Scraper 
  
  def self.scrape_dogs(url)
    doc = Nokogiri::HTML(open(url))
    url = "https://bestfriends.org/adopt/adopt-our-sanctuary/dogs"
    
    dogs = []
    dogs = doc.css("span.animalName")
    
    dogs.map.with_index[0] do |name, index|
      name = name.text
      index
    end
    
   dogs.map.with_index[0] do |info|
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