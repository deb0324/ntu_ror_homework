def check_winner(user, comp)
    if user == comp
        return "It's a Tie!!"
    end
    # game logic
    case user
    when "R"
        return comp == "S" ? "You Won! Wohoooo :D" : "You Lost :( "

    when "P"
        return comp == "R" ? "You Won! Wohoooo :D" : "You Lost :( "

    when "S"
        return comp == "P" ? "You Won! Wohoooo :D" : "You Lost :( "
    end
end

continue = "Y"

while continue != "N"
    puts "##############################"
    puts "     ROCK PAPER SCISSOR!!"
    puts "##############################"

    #get user input
    begin
        puts "Enter 'R', 'P' or 'S'"
        user_input = gets.chomp.upcase
    end while !["R", "P", "S"].include?(user_input)

    #generate random outcome
    comp_input = ["R","P","S"].sample
    puts "Computer played: #{comp_input}"

    #determine winner
    puts check_winner(user_input, comp_input)

    begin
        puts "Do you want to play again?"
        puts "Enter 'Y' to continue, 'N' to exit game"
        continue = gets.chomp.upcase
    end while !["Y", "N"].include?(continue)

end 
puts "Thanks for playing!!"
