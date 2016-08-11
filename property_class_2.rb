class Property

	attr_accessor :location, :agency, :price

end

class House < Property

	attr_accessor :garden_size

end

class Apartment < Property
	
	attr_accessor :monthly_fee 

end

class Rustico < Property
	
	attr_accessor :construction 

end

green_house = House.new
green_house.price = 150000
green_house.location = 'Bellano'
green_house.agency = 'Miralago'
green_house.garden_size = 150

sunny_apartment = Apartment.new
sunny_apartment.monthly_fee = 40
sunny_apartment.price = 100000
sunny_apartment.agency = 'Molteni'
sunny_apartment.location = 'Perledo'

small_rustico = Rustico.new
small_rustico.price = 45000
small_rustico.location = 'Biosio'
small_rustico.agency = 'Lisolago'
small_rustico.construction = 'stone'

puts "I would like to buy either the house with 
#{green_house.garden_size}mq of garden in 
#{green_house.location} for #{green_house.price} 
from #{green_house.agency}, or the #{sunny_apartment.monthly_fee} 
eur/mo. apartment in #{sunny_apartment.location} for 
#{sunny_apartment.price} from #{sunny_apartment.agency}, or
the #{small_rustico.construction} rustico in #{small_rustico.location}
for #{small_rustico.price} from #{small_rustico.agency}."

puts green_house.inspect
puts sunny_apartment.inspect
puts small_rustico.inspect
