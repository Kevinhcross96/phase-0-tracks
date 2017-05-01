#First, we'll need to switch the first and last name around, which we can do by splitting the name on " " and iterating through the array, pushing the items into a new array
#Then we reverse that array to switch the first and last names around
#Then we write some helper functions, We'll need one to identify consonants, one to identify vowels, one to take vowels and return the next vowel, and one to take consonants and return the next consonant
#Then we iterate through the name array, checking each index to see what kind of letter it is, and then running it through the proper helper function, returning the correct letter to another array
#Then we join the new array on the empty string, and print out the answer

def aliasMaker(name)
	newName = []
	newName2 = []
	vowels = ["a","e","i","o","u"]
	consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
	step1 = name.split(" ")
	i = 0
	j = 0

	while i <= step1.length
		newName.push(step1[i])
		i += 1
	end
	newName = newName.reverse
	newName = newName.join(" ")
	step2 = newName
	while j <= step2.length
		if isConsonant(step2[j]) == true
			newName2.push(nextConsonant(step2[j]))
		elsif isVowel(step2[j]) == true
			newName2.push(nextVowel(step2[j]))
		else newName2.push(step2[j])
		end
		j += 1
	end
	answer = newName2.join("")

end

def nextVowel(vowel)
	answer = []
	vowels = ["a", "e", "i", "o", "u"]
	capsVowels = ["A", "E", "I", "O", "U"]
	v = 0
	cv = 0
	while v <= vowels.length
		if vowel == vowels[v]
			answer.push vowels[v + 1]
		end
		v += 1
	end
	while cv <= capsVowels.length
		if vowel == capsVowels[cv]
			answer.push capsVowels[cv + 1]
		end
		cv += 1
	end
	return answer
end

def nextConsonant(consonant)
	answer = []
	consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
	capsConsonants = ["B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z"]
	c = 0
	cc = 0
	while c <= consonants.length
		if consonant == consonants[c]
			answer.push consonants[c + 1]
		end
		c += 1
	end
	while cc <= capsConsonants.length
		if consonant == capsConsonants[cc]
			answer.push capsConsonants[cc + 1]
		end
		cc += 1
	end
	return answer
end

def isConsonant(letter)
	consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
	capsConsonants = ["B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z"]
	c = 0
	cc = 0
	while c <= consonants.length
		if letter == consonants[c]
			return true
		end
		c += 1
	end

	while cc <= capsConsonants.length
		if letter ==  capsConsonants[cc]
			return true
		end
		cc += 1
	end

	return false
end

def isVowel(letter)
	vowels = ["a", "e", "i", "o", "u"]
	capsVowels = ["A", "E", "I", "O", "U"]
	v = 0
	cv = 0
	while v <= vowels.length
		if letter == vowels[v]
			return true
		end
		v += 1
	end
	while cv <= capsVowels.length
		if letter == capsVowels[cv]
			return true
		end
		cv += 1
	end
	return false
end

finalNames = []

puts "Hello. Please enter your name to receive your alias. You can continue to enter names for new aliases until you type 'quit'."

name = gets.chomp

finalNames.push aliasMaker(name)

puts aliasMaker(name)

until name == "quit"
	puts "Enter the next name for aliasing please. You can stop by typing 'quit'."
	name = gets.chomp
	if name == "quit"
		break
	end
	finalNames.push aliasMaker(name)
	puts aliasMaker(name)
end

puts "Here are the aliases for the names you entered, in the order you entered them in."
puts finalNames
