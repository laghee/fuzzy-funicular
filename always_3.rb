puts 'Give me a number.'
input = gets.to_i
number = (((input + 5) * 2) - 4) / 2
number = number - input
puts "The result is: #{number}"