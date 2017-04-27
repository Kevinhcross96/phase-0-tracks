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