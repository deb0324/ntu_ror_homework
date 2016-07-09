class Player

    attr_accessor :choice

    def initialize(name)
        @name = name
    end

    def greet
        puts "#{@name}! Welcome to the game :)"
    end

    def did_player_win(user, comp)
        if user == comp
            return "It's a Tie!!"
        end
        
    # game logic
        case user
            when "R"
            if comp == "S"
                return "You Won! Wohoooo :D"
            else
                return "You Lost :( "
            end

        when "P"
            if comp == "R"
                return "You Won! Wohoooo :D"
            else
                return "You Lost :( "
            end

        when "S"
            if comp == "P"
                return "You Won! Wohoooo :D"
            else
                return "You Lost :("
            end
        end
    end
end

class Computer

    attr_accessor :choice

    def self.greet
        puts "Opponent: I'm gonna crush you!! ;)"
    end

    def self.choice
        @choice = ["P","R","S"].sample
    end
end

continue = "Y"
while continue != "N"

    puts "##############################"
    puts "     ROCK PAPER SCISSOR!!"
    puts "##############################"
    Computer.greet

    puts "Enter player name: "
    user = Player.new(gets.chomp)
    user.greet

    #get user input
    begin
        puts "Enter 'R', 'P' or 'S'"
        user.choice = gets.chomp.upcase
    end while !["R", "P", "S"].include?(user.choice)

    puts user.did_player_win(user.choice, Computer.choice)

    begin
        puts "Do you want to play again?"
        puts "Enter 'Y' to continue, 'N' to exit game"
        continue = gets.chomp.upcase
    end while !["Y", "N"].include?(continue)
end

puts "Thanks for playing!!"
