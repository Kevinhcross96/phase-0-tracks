# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'
# require_relative states that in order for this to run correctly, it needs
# the contents located in state_data.rb, in the same directory this file is in
# require searches in the root directory and all directories listed in the path

class VirusPredictor
#the initialize method is responsible for taking in the arguments, and setting them to instance variables so the other methods can access them
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#virus_effects runs the predicted_deaths method and the speed_of_spread method
  
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  #private methods can be called only in the context of the current object
  #moving private above virus_effects blocks the driver code from calling virus_effects

#predicted deaths takes in the instance variables and depending on the population_density and population, determines the value of the number_of_deaths variable
#and prints out a string with the results
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4)
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3)
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2)
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1)
    else
      number_of_deaths = (@population * 0.05)
    end

    number_of_deaths = number_of_deaths.floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
#speed_of_spread takes in the population_density and state, and uses population_density in if statements
#to determine the speed variable. It then prints out a string with the speed stated in it. It also creates line breaks.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |keyword, value|
  one_state = VirusPredictor.new(keyword, value[:population_density], value[:population])
  one_state.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

#the rocket syntax (=>) in hashes can be used to assign a string as a keyword
#the colon syntax (:) in hashes is used to make the keyword a symbol

# require_relative states that in order for this to run correctly, it needs
# the contents located in state_data.rb, in the same directory this file is in
# require searches in the root directory and all directories listed in the path

#you can iterate through a hash using .each do and a block. For example, STATE_DATA.each do |keyword, value|
#you can also iterate through a hash with .each_key and .each_value

#I realized that the variables in virus_effects were simply methods being called, and neither method actually needed any arguments, since both depended on instance variables

#I most solidified working with hashes in ruby, and how to iterate through them.