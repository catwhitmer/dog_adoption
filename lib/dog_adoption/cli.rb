
class DogAdoption::CLI 
  
  
  def start 
    puts "\nWelcome to Cat's Dog Adoption!".light_green.bold
    puts "\nFor a list of dogs available, type list."
    puts "To leave anytime, type exit."
    dog_menu
  end
  
  def dog_menu 
    input = nil 
    while input != "exit"
      input = gets.strip.downcase
        if input == "list"
          if DogAdoption::Dog.all == []
            dog_objects
            list_dogs
            choose_dog
          else
            list_dogs
            choose_dog
          end
        elsif input == "exit"
          puts "Goodbye!".yellow.bold
        else 
          puts "Whoof was that? Please type list or exit.".red.bold
        end
     end
   end
   
   def list_dogs
     DogAdoption::Dog.all.each.with_index(1) do |dog, index|
         puts "#{index}. #{dog.name}."
     end
   end
   
   def choose_dog
     puts "\nPlease choose the number of the dog you would like more information about:".cyan.bold
     input = gets.strip.to_i
     max_length = DogAdoption::Dog.all.length
     if input.between?(1, max_length)
       details = DogAdoption::Dog.all[input-1]
        dog_details(details)
     end
     dog_menu_two
    end
   
   def dog_objects
     url = "https://bestfriends.org/adopt/adopt-our-sanctuary/dogs"
     DogAdoption::Scraper.scrape_dogs(url)
   end
   
   def dog_details(dog)
     DogAdoption::Scraper.scrape_dogs_details(dog)
      puts "name: #{dog.name}"
      puts "breed: #{dog.breed}"
      puts "size: #{dog.size}"
      puts "color: #{dog.color}"
      puts "gender: #{dog.gender}"
      puts "description: #{dog.description}"
   end
   
   def dog_menu_two
     puts "\nIf you would like to see the list again, press list.".light_blue.bold
     puts "To exit,type exit.".light_blue.bold
   end
end