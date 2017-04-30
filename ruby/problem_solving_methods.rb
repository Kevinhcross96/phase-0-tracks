arr = [1, 2, 3, 4, 5]

def array_search(array, num2)
	i = 0
	while i <= array.length
		if num2 == array[i]
			puts i 
			break
		elsif i == array.length && num2 != array[i]
			puts "nil"
		end
		i += 1
	end
end

#array_search(arr, 5)

###

def fib_method(num)
	arr = [0, 1]
	i = 0
	new_num = 0

	while arr.length < num
		while i <= arr.length
			new_num = arr[i] + arr[i + 1]
			i += 1	
			arr.push(new_num)
			break
		end
	end

	p arr
end

#fib_method(100)

###

#Take an array
#Define a method to sort the array
#Loop through the array for the array length
#If the first array index is larger than the second array index, sort in descending order
#loop through until each array index is checked
#Break whenn done

arr = [7, 4, 5, 3, 1] 

def arr_sort(arr)
	arr_length = arr.length

	loop do 
		new_arr_sort = false
		(arr_length - 1).times do |num|
			if arr[num] > arr[num + 1]
				arr[num], arr[num + 1] = arr[num + 1], arr[num]
				new_arr_sort = true
			end
		end
		break if new_arr_sort == false
	end
	p arr 
end

puts arr_sort(arr)
