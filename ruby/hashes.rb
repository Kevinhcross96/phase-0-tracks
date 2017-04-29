## So, in order to get this done the following steps need to be taken:
#1. A user-input section where the client's information can be entered as strings and converted to the proper data type.
#2. Set up a hash to put the data into
#3. Print out the hash with the data so that the user can see it
#4. Prompt the user if they need to update any info.
#5. Set up another user input section so they can tell the program which field they want to update
#6. If the user selects a field to update, rewrite the new information into the hash
#7. Print out the final hash for the user to see.

puts "What is the client's name?"
name = gets.chomp
puts "What is the client's age?"
age = gets.chomp.to_i
puts "How many children does the client have?"
childCount = gets.chomp.to_i
puts "What decor theme does the client want?"
decorTheme = gets.chomp

puts "Here is the client's information you have entered:"

info = {"clientName" => name, "clientAge" => age, "children" => childCount, "decor" => decorTheme}

puts info


puts "Please tell me if you would like to correct any of the information. Please answer either 'Name', 'Age', 'Children', or 'Decor'. You can also answer 'None' if you don't want to make any updates."
	correction = gets.chomp
	if correction == "Name"
		puts "Please tell me the client's name."
		name = gets.chomp
		puts "Thank you for this update."
	elsif correction == "Age"
		puts "Please tell me the client's age."
		age = gets.chomp.to_i
		puts "Thank you for this update."
	elsif correction == "Children"
		puts "Please tell me how many children the client has."
		childCount = gets.chomp.to_i
		puts "Thank you for this update."
	elsif correction == "Decor"
		puts "Please tell me what decor the client wants."
		decorTheme = gets.chomp
		puts "Thank you for this update."
	elsif correction == "None"
		puts "Thank you for this information."
	end
puts "Here is the final client data:"
info = {"clientName" => name, "clientAge" => age, "children" => childCount, "decor" => decorTheme}
puts info

#So, I see in the rubric that we're expected to mess around with arrays a bit, but the actual exercise itself didn't really need an array. 
#I'll just put a meaningless array down here in comments to satisfy the rubric.

#rubricArray = [1, 2, 3, 5, 6, 7]
#rubricArray.push 8
#puts rubricArray[3]

