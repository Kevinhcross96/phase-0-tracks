#module Shout
  #def self.yell_angrily(words)
    #words + "!!!" + " :("
  #end

  #def self.yell_happily(words)
  	#words + "!" + " :D"
  #end

#end

#puts Shout.yell_angrily("NO")
#puts Shout.yell_happily("HOORAY")

module Shout
	def angry_yell(words)
		words.upcase + "!!!" + " >:("
	end

	def happy_yell(words)
		words.upcase + "!" + " :D"
	end
end

class Carnival_Barker
	include Shout
end

class Especially_loud_man
	include Shout
end
carnie = Carnival_Barker.new
puts carnie.happy_yell("step right up")
puts carnie.angry_yell("no refunds")

loud_guy = Especially_loud_man.new
puts loud_guy.angry_yell("these pretzels are making me thirsty")
puts loud_guy.happy_yell("my boys can swim")