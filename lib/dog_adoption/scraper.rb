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
    dog_description =  {
      :name => doc.css("h2.heading-2").text.strip,
      :breed => doc.css("span.bold.black")[0].text.strip,
      :age => doc.css("span.bold.black")[1].text.strip,
      :size => doc.css("span.bold.black")[2].text.strip,
      :color => doc.css("span.bold.black")[3].text.strip,
      :gender => doc.css("span.bold.black")[4].text.strip,
      :description => doc.css("p.rescue-groups-pet-description").text.strip
    }
    
    dog_description.map do |key, value|
      puts "#{key}: #{value}"
    end
  end
end