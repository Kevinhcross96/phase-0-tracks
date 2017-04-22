def hamsterquestions
	puts "What is the hamster's name?"
	hamstername = gets.chomp
	puts "How loud is the hamster on a scale from 1 to 10?"
	hamstervolume = gets.chomp.to_i
	puts "What is the hamster's fur color?"
	furcolor = gets.chomp
	puts "Is the hamster a good candidate for adoption? Yes or No?"
	hamsteradopt = gets.chomp
	if hamsteradopt == "Yes"
		hamsteradopt = true
	else
		hamsteradopt = false
	end
	puts "How old is the hamster?"
	hamsterage = gets.chomp
	if hamsterage == ""
		hamsterage = nil
	end

	puts "Hamster's name: #{hamstername}"
	puts "Hamster noise level: #{hamstervolume}"
	puts "Hamster's fur color: #{furcolor}"
	if hamsteradopt == true
		puts "This hamster is cleared for adoption!"
	else
		puts "Well I guess we have some catfood then."
	end
	if hamsterage == nil
		puts ""
	else puts hamsterage
	end

end
hamsterquestions
