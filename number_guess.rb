 class NumberGuessingGame 
    def initialize(randomnumber)
        @randomnumber = randomnumber 
    end 

    def guess(number)
        puts "I'm thinking of a random number from 0 to 9" 
        puts "Can you guess it?"  
        loop do print "What is your guess?"
          guess = gets.chomp.to_i 
          unless guess == @randomnumber 
            message = if guess > @randomnumber 
            "Too high" 
            else   
            "Too low" 
            end
            puts message 
          else 
            puts "You got it!"
            puts "Try again?: Y or N"
            answer = gets.chomp.capitalize 
             if answer == "Y"
               puts "Let's play" 
             else 
               puts "Goodbye!"
               exit 
             end 

          end 
        end  
    end 
end 

game = NumberGuessingGame.new(rand(0..9))

p game.guess(5) == "Too low"

p game.guess(8) == "Too high"

p game.guess(7) == "Too high"

p game.guess(6) == "You got it!