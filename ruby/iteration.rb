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
