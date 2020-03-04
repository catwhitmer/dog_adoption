class DogAdoption::CLI 
  
  def start 
    puts "Welcome to Cat's Dog Adoption!"
    break
    puts "For a list of dogs available, type list."
    puts "To leave anytime, type exit."
    
  end
    dog_list
    
    
    puts "To leave anytime, type exit."
    
    input = gets.strip.downcase
  end
  
  def dog_list
    #get dog list from scraping
    #return array of dogs
    puts "These are the dogs available today."
    puts "For a list of dogs available, type list."
  end
  
  def dogs 
    input = nil 
    while input != "exit"
      puts "Please enter the number of the dog you would like more information about:"
      input = gets.strip.downcase
      case input
      when "1"
        puts "more info on 1"
      when "2"
        puts "more info on 2"
      when "list"
        dog_list
      when "exit"
        puts "Goodbye"
      else 
        puts "What was that?"
      end
    end
    
  end
  
end