class DogAdoption::Scraper 
  
  def self.scrape(url)
    page = Nokogiri::HTML(open(url))
    dogs_array = page.css("span.animalName")
    
    dogs_array.map do |link|
    end 
  end

end

#https://bestfriends.org/adopt/adopt-our-sanctuary/dogs