class Santa
  
  attr_accessor :gender
  attr_reader :age, :ethnicity, :reindeer_ranking
  
  #def age
    #@age
  #end
  
  #def ethnicity
    #@ethnicity
  #end
  
  #def reindeer_ranking
    #@reindeer_ranking
  #end
  
  #def gender=(new_gender)
    #@gender = new_gender
  #end
  
  def celebrate_birthday
    @age += 1
    puts @age
  end
  
  def get_mad_at(reindeer)
    x = 0
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    while x < reindeer_ranking.length
      if @reindeer_ranking[x] == reindeer
        @reindeer_ranking.delete_at(x)
        @reindeer_ranking << reindeer
      end
      x += 1
    end
    puts @reindeer_ranking
  end

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    @randage = @age + rand(139)
    puts "This santa is a #{randage} year old  #{gender} #{ethnicity}."
  end
  
  def randage
    randage = @age + rand(139)
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

end

#Santa.new("male", "greek").get_mad_at("Rudolph")
#Santa.new("female", "greek").celebrate_birthday
#Santa.new("male", "Russian").gender= "Female"

genders = ["agender", "pangender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "Wereodile", "toaster"]

x = 0

while x < 100
  Santa.new(genders.sample, ethnicities.sample)
  x += 1
end

#Santa.new("male", "greek")
#Santa.new("female", "slovenian")
#Santa.new("telepathic-spider", "laotian")