def vampquestions
	puts "What is your name?"
	name = gets.chomp
	puts "How old are you?"
	age = gets.chomp.to_i
	puts "What year were you born?"
	bornyear = gets.chomp.to_i
		if (2017 - bornyear) != age
			yearmatch = false
		end
		if (2017 - bornyear) == age
			yearmatch = true
		end
	puts "Our company cafeteria serves garlic bread. Should we order some for you? Please answer 'Yes' or 'No'"
	garlic = gets.chomp
		if garlic == "Yes"
			gb = true
		end
		if garlic == "No"
			gb = false
		end
	puts "Would you like to enroll in the company's health insurance? Please answer 'Yes' or 'No'"
	healthinsurance = gets.chomp
		if healthinsurance == "Yes"
			hi = true
		end
		if healthinsurance == "No"
			hi = false
		end


	if (name == "Drake Cula") || (name == "Tu Fang") == true
		vampname = true
		puts "Definitely a vampire"
	end
	if (name == "Drake Cula") || (name == "Tu Fang") == false
		vampname = false
	end
	if ((yearmatch && gb && hi) == false) && vampname == false
		puts "Probably not a vampire"
	end
	if (yearmatch == false) && ((gb == false) || (hi == false)) && (vampname == false)
		puts "Probably a vampire"
	end
	if ((yearmatch && gb && hi) == true) && vampname == false
		puts "Almost certainly a vampire"
	end
end

vampquestions
