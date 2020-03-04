class DogAdoption::CLI 
  
  def start 
    puts "Welcome to Cat's Dog Adoption!"
    break
    puts "For a list of dogs available, type list."
    puts "These are the dogs available today."
    puts "To leave anytime, type exit."
    
    input = gets.strip.downcase
  end
  
  
end