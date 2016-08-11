
puts 'Give me a number.'
input = gets.to_i

def always_3(num)
	(((((num + 5) * 2) - 4) / 2) - num)
end

puts "Always " + always_3(input).to_s