class DogAdoption::Scraper 
  
  def self.scrape_dogs(url)
    doc = Nokogiri::HTML(open(url))
    url = "https://bestfriends.org/adopt/adopt-our-sanctuary/dogs"
    array_dogs = doc.css("div.rg-animal")
    
    array_dogs.map do |dog|
      DogAdoption::Dogs.new(dog.text, dog.first_element_child["href"])
    end
  end
end