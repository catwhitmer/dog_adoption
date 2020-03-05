
class DogAdoption::CLI 
  
  def start 
    puts "Welcome to Cat's Dog Adoption!"
    puts "\nFor a list of dogs available, type list."
    puts "To leave anytime, type exit."
    dogs
  end
  
  def dogs 
    input = gets.strip.downcase
      case input
      when "list"
        dog_objects
        list_dogs
        puts dogs[0].name
        puts dogs[0].url
      when "exit"
        puts "Goodbye"
      else 
        puts "Whoof was that? Please type list or exit."
      end
   end
   
   def list_dogs
     dogs = DogAdoption::all
       puts "\nPlease enter the number of the dog you would like more information about:"
       dogs.each.with_index(0) do |dogs, index|
         puts "#{index}. #{dogs.name}"
       end
   end
   
   def dog_objects
     url = "https://bestfriends.org/adopt/adopt-our-sanctuary/dogs"
        DogAdoption::Scraper.scrape_dogs(url)
   end
end