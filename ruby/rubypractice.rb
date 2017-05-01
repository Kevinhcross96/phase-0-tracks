letters = ["a", "b", "c", "d", "e"]
new_letters = []

puts "Original data:"
p letters

letters.each do |letter|
	new_letters << letter.next
end

puts "After .each call:"
p letters
p new_letters

alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]