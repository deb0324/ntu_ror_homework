require 'pry'

# Perform operation according to specified parameters
def doOperation(x, y, op)
    if op == 1
        return x + y
    elsif op == 2
        return x - y
    elsif op == 3
        return x * y
    elsif op == 4
        return x / y
    elsif op == 5
        return x ** y
    else
        return "Not a valid operation!"
    end
end

# Main part of calculator
def calculator()
    puts "##############################"
    puts "         CALCULATOR!!"
    puts "##############################"

    # Get user input
    print "Enter first number:"
    first_num = gets.chomp.to_f

    print "Enter second number:"
    second_num = gets.chomp.to_f

    puts "1) addition"
    puts "2) subtraction"
    puts "3) multiplication"
    puts "4) division"
    puts "5) exponential"
    print "Enter the operation to perform: "
    operation = gets.chomp.to_i

    ans = doOperation(first_num, second_num, operation)
    puts "Your answer is: " + ans.to_s

    print "Enter '1' to use calculator again, '2' to exit: "
    return gets.chomp.to_i
end

continue = 1
while continue == 1 do
    continue = calculator()
end

puts "Thanks for using this aweomse calculator ;)"

