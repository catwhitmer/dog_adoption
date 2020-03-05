
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
        when "exit"
          puts "Goodbye"
     else 
       puts "Whoof was that? Please type list or exit."
       dog_menu
     end
    end
   end
   
   def list_dogs
     DogAdoption::Dogs.all.each.with_index(1) do |dog, index|
         puts "#{index}. #{dog.name}"
       end
   end
   
   def dog_objects
     url = "https://bestfriends.org/adopt/adopt-our-sanctuary/dogs"
        DogAdoption::Scraper.scrape_dogs(url)
   end
end