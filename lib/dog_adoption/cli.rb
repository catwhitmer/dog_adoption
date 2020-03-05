
class DogAdoption::CLI 
  
  def start 
    puts "Welcome to Cat's Dog Adoption!"
    puts "\nFor a list of dogs available, type list."
    puts "To leave anytime, type exit."
    dog_menu
  end
  
  def dog_menu 
    input = nil 
    while input != "exit"
      input = gets.strip.downcase
      case input
        when "list"
          dog_objects
          list_dogs
          choose_dog
        when "exit"
          puts "Goodbye"
     else 
       puts "Whoof was that? Please type list or exit."
     end
    end
   end
   
   def list_dogs
     DogAdoption::Dogs.all.each.with_index(1) do |dog, index|
         puts "#{index}. #{dog.name}"
         #input = gets.strip.to_i
       end
   end
   
   def choose_dog
     puts "\nPlease choose the number of the dog you would like more information about:"
   end
   
   def dog_objects
     url = "https://bestfriends.org/adopt/adopt-our-sanctuary/dogs"
        DogAdoption::Scraper.scrape_dogs(url)
   end
end