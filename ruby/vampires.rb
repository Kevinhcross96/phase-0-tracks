def vampquestions
	puts "How many employees are going to be processed?"
	count = gets.chomp.to_i
	counter = 0
	while counter < count
		puts "What is your name?"
		name = gets.chomp
		puts "How old are you?"
		age = gets.chomp.to_i
		puts "What year were you born?"
		bornyear = gets.chomp.to_i
			if (2017 - bornyear) == age
				yearmatch = true
			else
				yearmatch = false
			end
		puts "Our company cafeteria serves garlic bread. Should we order some for you? Please answer 'Yes' or 'No'"
		garlic = gets.chomp
			if garlic == "Yes"
				gb = true
			elsif garlic == "No"
				gb = false
			end
		puts "Would you like to enroll in the company's health insurance? Please answer 'Yes' or 'No'"
		healthinsurance = gets.chomp
			if healthinsurance == "Yes"
				hi = true
			elsif healthinsurance == "No"
				hi = false
			end
			answer = ""
		until ((answer == "sunshine") || (answer == "done")) == true
			puts "Please let us know if you have any allergies"
			answer = gets.chomp
		end


		if (name == "Drake Cula" || name == "Tu Fang") == true
			puts "Definitely a vampire"
		elsif answer == "sunshine"
			puts "Probably a vampire"
		elsif yearmatch && (gb || hi) == true
			puts "Probably not a vampire."
		elsif (yearmatch || gb || hi) == false 
			puts "Almost certainly a vampire."
		elsif yearmatch && (gb || hi) == false 
			puts "Probably a vampire."
		else
			puts "Results inconclusive."
		end
		counter +=1
	end
	puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end

vampquestions
