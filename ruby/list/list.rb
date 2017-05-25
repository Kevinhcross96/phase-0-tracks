class TodoList

	def initialize(list)
		@list = list
	end

	def get_items
		return @list
	end

	def add_item(item)
		@list.push(item)
		return @list
	end

	def delete_item(item)
		@list.each do |i|
			if i == item
				@list.delete(i)
			end
		return @list
		end
	end

	def get_item(index)
		return @list[index]
	end
end

		


