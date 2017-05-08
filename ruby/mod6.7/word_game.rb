class Game

	def initialize
	end

	def counterset(word)
		if word.length <= 3
			@counter = 5
		elsif word.length > 3 && word.length <= 5
			@counter = 7
		elsif word.length > 5
			@counter = 10
		end
		return @counter
	end

	def set_word(word)
		@word = word
		puts "The guessing word is set. You may now begin playing."
	end

	def word_length_warning
		if @counter == 5
			puts "The word is 3 letters long or less, you will have 5 chances to guess it."
		elsif @counter == 7
			puts "The word is between 3 and 5 letters long. You will have 7 chances to guess it."
		elsif @counter == 10
			puts "The word is longer than 5 letters long. You will have 10 chances to guess it."
		end	
	end


	def guess(guessword)
		wordbank = []
		wordstatus = @word.split""
		guesswordstatus = guessword.split""
		obscurewordstatus = []
		#z = 0
		#while @counter > 0
			#if wordstatus[z] == guesswordstatus[z]
				#obscurewordstatus[z] = wordstatus[z]
			#end
			#z += 1
		#end
			#puts "Here are the letters you have guessed correctly:"
			#puts obscurewordstatus.join ""
		#I've tried to implement the above commented out code
		#everywhere I can think of, and made so many modifications to it
		#but after over two hours trying to get this feature to work, I have to throw in the towel.
		while @counter > 0
			x = 0
			while obscurewordstatus.length < wordstatus.length
				obscurewordstatus << "_ "
			end
			@inlist = false
			while x <= wordbank.length
				if guessword.downcase == wordbank[x]
					@inlist = true
				end
				x += 1
			end
			if guessword == @word
				puts "You are correct! The word was " + @word + "!"
				puts "Congratulations!"
				break
			end
			if @inlist == true
				puts "You've already guessed that word. Try a different one."
			elsif guessword != @word
				wordbank.push guessword.downcase
				@counter -= 1
				puts "INCORRECT! Try harder next time! You have " + @counter.to_s + " guesses left."
				puts "Here are the words you have guessed so far:"
				puts wordbank
			end
			if @counter <= 0
				puts "You get nothing! You lose! Good day sir!"
				puts "Or Madam."
				puts "Or whatever you are."
			end
			if @counter <= 0
				break
			end
			puts "Guess again!"
			guessword = gets.chomp.downcase
		end
	end		
end

new_game = Game.new
puts "Please enter the word you'd like the other player to guess."
word = gets.chomp.downcase
new_game.set_word(word)
new_game.counterset(word)
new_game.word_length_warning
puts "Please enter your guess for the word."
guessword = gets.chomp.downcase
new_game.guess(guessword)
