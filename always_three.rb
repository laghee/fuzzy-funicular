puts 'Give me a number.'
number_given = gets.to_i
number = (((number_given + 5) * 2) - 4) / 2
result_number = number - number_given
puts "The result is: #{result_number}"