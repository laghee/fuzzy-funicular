class Property
	def set_location=(property_location)
		@place = property_location
	end

	def get_location
		return @place
	end

	def set_agency=(agency_name)
		@agency_name = agency_name
	end

	def get_agency
		return @agency_name
	end

	def set_price=(price)
		@price = price
	end

	def get_price
		return @price
	end
end

class House < Property
	def set_garden_size=(garden_size)
		@garden_size = garden_size
	end
	def get_garden_size
		return @garden_size
	end
end

class Apartment < Property
	def set_monthly_fee=(monthy_fee)
		@monthy_fee = monthy_fee
	end
	def get_monthly_fee
		return @monthy_fee
	end
end

class Rustico < Property
	def set_construction=(construction_material)
		@construction = construction_material
	end
	def get_construction
		return @construction
	end
end

green_house = House.new
green_house.set_price = 150000
green_house.set_location = 'Bellano'
green_house.set_agency = 'Miralago'
green_house.set_garden_size = 150

sunny_apartment = Apartment.new
sunny_apartment.set_monthly_fee = 40
sunny_apartment.set_price = 100000
sunny_apartment.set_agency = 'Molteni'
sunny_apartment.set_location = 'Perledo'

small_rustico = Rustico.new
small_rustico.set_price = 45000
small_rustico.set_location = 'Biosio'
small_rustico.set_agency = 'Lisolago'
small_rustico.set_construction = 'stone'

puts "I would like to buy either the house with 
#{green_house.get_garden_size}mq of garden in 
#{green_house.get_location} for #{green_house.get_price} 
from #{green_house.get_agency}, or the #{sunny_apartment.get_monthly_fee} 
eur/mo. apartment in #{sunny_apartment.get_location} for 
#{sunny_apartment.get_price} from #{sunny_apartment.get_agency}, or
the #{small_rustico.get_construction} rustico in #{small_rustico.get_location}
for #{small_rustico.get_price} from #{small_rustico.get_agency}."

puts green_house.inspect
puts sunny_apartment.inspect
puts small_rustico.inspect
