def determine_number(date)
	number = date[0].to_i + date[1].to_i + date[2].to_i + date[3].to_i
	+ date[4].to_i + date[5].to_i + date[6].to_i
		+ date[7].to_i

	word_number = number.to_s
	number = word_number[0].to_i + word_number[1].to_i

	if (number > 9)
		word_number = number.to_s
		path_number = word_number[0].to_i + word_number[1].to_i
	else
		path_number = number
	end
end

def determine_message(num)

	case num
	when 1
		message = "One is the leader. The number one indicates the ability to stand alone, and is a strong
vibration. Ruled by the Sun."
	when 2
		message = "This is the mediator and peace-lover. The number two indicates the desire for harmony.
It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
	when 3
		message = "Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and 
optimistic, Threes enjoy life and have a good sense of humor. Ruled by Jupiter."
	when 4
		message = "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working,
and helpful. Ruled by Uranus."
	when 5
		message = "This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’
people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
	when 6
		message = "This is the peace lover. The number six is a loving, stable, and harmonious vibration.
Ruled by Venus."
	when 7
		message = "This is the deep thinker. The number seven is a spiritual vibration. These people are not
very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
	when 8
		message = "This is the manager. Number Eight is a strong, successful, and material vibration.
Ruled by Saturn."
	when 9
		message = "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic
vibration. Ruled by Mars."
	else
		message = "Methinks something has gone wrong ..."
	end

end

puts "Please enter your birthdate (in format MMDDYYYY):"

birthdate = gets

numerology_number = determine_number(birthdate)

numerology_message = determine_message(numerology_number)

puts "Your numerology number is #{numerology_number}.\n#{numerology_message}"