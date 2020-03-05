class DogAdoption::Scraper 
  
  def self.scrape_dogs(url)
    doc = Nokogiri::HTML(open(url))
    url = "https://bestfriends.org/adopt/adopt-our-sanctuary/dogs"
    array_dogs = doc.css("div.rg-animal")
    
    array_dogs.map do |dog|
      DogAdoption::Dogs.new(dog.first_element_child.last_element_child.first_element_child.text, dog.first_element_child["href"])
    end
  end
  
  def self.scrape_dogs_details(details)
    doc = Nokogiri::HTML(open(details.url))
    binding.pry 
    name = doc.css("h2.heading-2").text.strip
    breed = doc.css("")
    age = doc.css("")
    gender = doc.css("")
    description = doc.css("")
    
  end
end