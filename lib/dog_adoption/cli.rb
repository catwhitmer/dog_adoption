class DogAdoption::CLI 
  
  def start 
    puts "Welcome to Cat's Dog Adoption!"
    puts "\nFor a list of dogs available, type list."
    puts "To leave anytime, type exit."
    dogs
  end
  
  def dog_list
    dogs.map.with_index[0] do |name, index|
      name = name.text
      index
    end
  end
  
  def dogs 
    input = nil 
    while input != "exit"
      puts "\nPlease enter the number of the dog you would like more information about:"
      input = gets.strip.downcase
      case input
      when "list"
        url = "https://bestfriends.org/adopt/adopt-our-sanctuary/dogs"
        dogs = DogAdoption::Scraper.scrape_dogs(url)
        puts dogs[0]
      when "exit"
        puts "Goodbye"
      else 
        puts "Whoof was that? Please type list or exit."
      end
    end
   end
end