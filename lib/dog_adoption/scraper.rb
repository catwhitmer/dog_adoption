class DogAdoption::Scraper 
  
  def self.scrape_dogs(url)
    doc = Nokogiri::HTML(open(url))
    url = "https://bestfriends.org/adopt/adopt-our-sanctuary/dogs"
    array_dogs = doc.css("div.rg-animal")
    
    array_dogs.map do |dog|
      DogAdoption::Dog.new(dog.first_element_child.last_element_child.first_element_child.text, dog.first_element_child["href"])
    end
  end
  
  def self.scrape_dogs_details(details)
    doc = Nokogiri::HTML(open(details.url))
    dog_description = doc.css("section.rescue-groups-pet-info-section")
    dog_description.each do |dog_details|
  
    detail = DogAdoption::Detail.new
    
    detail.name = dog_details.css("h2.heading-2").text.strip,
    detail.breed = dog_details.css("span.bold.black").text.strip,
    detail.age = dog_details.css("span.bold.black").text.strip,
    detail.size = dog_details.css("span.bold.black").text.strip,
    detail.color = dog_details.css("span.bold.black").text.strip,
    detail.gender = dog_details.css("span.bold.black").text.strip,
    detail.description = dog_details.css("p.rescue-groups-pet-description").text.strip
    
    details.dog_description << detail

  end 
 end
end