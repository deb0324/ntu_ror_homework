class Player

    attr_accessor :name, :symbol

    def initialize(name, symbol)
        @name = name
        @symbol = symbol
    end

    #prompts for player input
    def get_input(arr)
        begin
            puts " 1 | 2 | 3 "
            puts "---|---|---"
            puts " 4 | 5 | 6 "
            puts "---|---|---"
            puts " 7 | 8 | 9 "
            puts "#{@name}, Refer to graph above and enter a number (1~9):"
            input = gets.chomp.to_i
        end while ![1,2,3,4,5,6,7,8,9].include?(input)

        arr[input - 1] = symbol  # set symbol to corresponding index
        return arr
    end

    #determines if there's a winner, game logic
    def is_winner(arr)
        if (arr[0] == arr[1] && arr[1] == arr[2] && arr[0] == symbol) ||
            (arr[3] == arr[4] && arr[4] == arr[5] && arr[3] == symbol) ||
            (arr[6] == arr[7] && arr[7] == arr[8] && arr[6] == symbol) ||
            (arr[0] == arr[3] && arr[3] == arr[6] && arr[0] == symbol) ||
            (arr[1] == arr[4] && arr[4] == arr[7] && arr[1] == symbol) ||
            (arr[2] == arr[5] && arr[5] == arr[8] && arr[2] == symbol) ||
            (arr[0] == arr[4] && arr[4] == arr[8] && arr[0] == symbol) ||
            (arr[6] == arr[4] && arr[4] == arr[2] && arr[6] == symbol)
            return true
        else
            return false
        end
    end
end

player1 = Player.new("Player1", "O")
player2 = Player.new("Player2", "X")
arr = [" "," "," "," "," "," "," "," "," "]
turn = 1
count = 0

begin

    puts "##############################"
    puts "         TIC TAC TOE!!"
    puts "##############################"

    loop do
        puts "============="
        puts "| #{arr[0]} | #{arr[1]} | #{arr[2]} |"
        puts "|---|---|---|"
        puts "| #{arr[3]} | #{arr[4]} | #{arr[5]} |"
        puts "|---|---|---|"
        puts "| #{arr[6]} | #{arr[7]} | #{arr[8]} |"
        puts "============="

        break if player1.is_winner(arr) || player2.is_winner(arr) || count == 9
        if turn == 1
            arr = player1.get_input(arr)
            turn = 2
            count += 1
        else
            arr = player2.get_input(arr)
            turn = 1
            count += 1
        end
    end

    #determine output message
    if count == 9
        puts "It's a Tie!!"
    elsif turn == 1
        puts "Player 2 Wins!!"
    else
        puts "Player 1 Wins!!"
    end

    puts "Enter 'Y' to continue, 'N' to exit game"
    continue = gets.chomp.upcase
    arr = [" "," "," "," "," "," "," "," "," "]  #reset array
    count = 0
end while continue != "N"

puts "Thanks for playing :)"

