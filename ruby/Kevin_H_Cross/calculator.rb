puts "Hello. What calculation would you like to perform? Please make sure there is one space inbetween each integer and operator in your equation."
holdingPen = []
answer = []
counter = 1
calculation = gets.chomp
calculationArray = calculation.split" "
if calculation.split" " == nil
	calculationArray = calculation.split""
end
if calculationArray.length > 3
	puts "I'm sorry, your calculation is too long. Please enter an integer, an operator, and another integer."
	calculation = gets.chomp
	calculationArray = calculation.split" "
end
if calculationArray.length < 3
	puts "I'm sorry, your calculation is too short. Please enter an integer, an operator, and another integer."
	calculation = gets.chomp
	calculationArray = calculation.split" "
end
integer = calculationArray[0]
operator = calculationArray[1]
integer2 = calculationArray[2]
integer = integer.to_i
integer2 = integer2.to_i
operator = operator.to_s


def calculate(integer, operator, integer2)
	integer.send(operator, integer2)
end
holdingPen.push integer
holdingPen.push operator
holdingPen.push integer2
holdingPen.push "="
holdingPen.push calculate(integer, operator, integer2)
holdingPen = holdingPen.join " "
answer.push holdingPen

puts calculate(integer, operator, integer2)

while calculation != "done"
	puts "Please enter another calculation. Type 'done' if you would like to quit."
	calculation = gets.chomp
	calculationArray = calculation.split" "
	integer = calculationArray[0]
	operator = calculationArray[1]
	integer2 = calculationArray[2]
	integer = integer.to_i
	integer2 = integer2.to_i
	operator = operator.to_s
	if calculation == "done"
		break
	end
	calculate(integer, operator, integer2)
	holdingPen = []
	holdingPen.push integer
	holdingPen.push operator
	holdingPen.push integer2
	holdingPen.push "="
	holdingPen.push calculate(integer, operator, integer2)
	holdingPen = holdingPen.join " "
	answer.push holdingPen
	puts calculate(integer, operator, integer2)
	counter += 1
end
puts counter.to_s + " calculations performed:"
puts answer