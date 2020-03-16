class DogAdoption::Scraper 
  
  def self.scrape_dogs(url)
    doc = Nokogiri::HTML(open(url))
    url = "https://bestfriends.org/adopt/adopt-our-sanctuary/dogs"
    array_dogs = doc.css("div.rg-animal")
    
    array_dogs.map do |dog|
      DogAdoption::Dog.new(dog.first_element_child.last_element_child.first_element_child.text, dog.first_element_child["href"])
    end
  end
  
 def self.scrape_dogs_details(dog)
    doc = Nokogiri::HTML(open(dog.url))
    pet_desc = doc.css(".rescue-groups-pet-info-section")

      dog.breed = pet_desc.css("span")[1].text.strip
      dog.age = doc.css("span.bold.black")[1].text.strip
      dog.size =  doc.css("span.bold.black")[2].text.strip
      dog.color =  doc.css("span.bold.black")[3].text.strip
      dog.gender = doc.css("span.bold.black")[4].text.strip
      dog.description = doc.css("p.rescue-groups-pet-description").text.strip
  
  end
end