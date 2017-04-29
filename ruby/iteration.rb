colors = ["Red", "Blue", "Green"]
meals = {
	Morning: "Breakfast",
	Noon: "Lunch",
	Night: "Dinner"
}

puts colors
puts "After .each call"
colors.each { |color| puts [color] }
colors.map! do |color| 
	puts color
	"Hi!"
end

puts "after .map! call"


puts colors


puts meals
meals.each {|time, meal| puts "at #{time} we eat #{meal}"}

#Release 2

#1. .delete_if
h = {"a" => 3, "b" => 4, "c" => 5, "d" => 6}

puts h.delete_if {|key, value| value < 5}

a = [3, 4, 5, 6]

puts a.delete_if {|value| value < 5}

#2. .select

hash = {"a" => 3, "b" => 4, "c" => 5, "d" => 6}

puts hash.select{|key, value| value >= 5}

array = [3, 4, 5, 6]

puts array.select{|value| value >= 5}

#3 .reject

hash2 = {"a" => 3, "b" => 4, "c" => 5, "d" => 6}

puts hash2.reject {|key, value| value <= 5}

array2 = [3, 4, 5, 6]

puts array2.reject {|value| value < 5}

#4 .drop_while

array3 = [3, 4, 5, 6, 1]

puts array3.drop_while{|value| value < 5}

hash3 = {"a" => 3, "b" => 4, "c" => 5, "d" => 6}

puts hash3.keep_if{|key, value| value < 5}