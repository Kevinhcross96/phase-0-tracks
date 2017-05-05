class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(integer)
    x = 0
    while x < integer
      puts "Woof!"
      x += 1
    end
  end
  
  def roll_over
    puts "*rolls over*"
  end
  
  def dog_years(integer)
    dog_age = (integer.to_i) * 7
    puts "This dog is " + dog_age.to_s + " years old in dog years."
    return dog_age
  end
  
  def balance_treat_on_nose
    puts "*balances a treat on their nose. While drooling.*"
  end
  
  def initialize
    puts "Initializing new puppy instance"
  end
    

end

Grace = Puppy.new

Grace.fetch("ball")

Grace.speak(3)

Grace.roll_over

Grace.dog_years(10)

Grace.balance_treat_on_nose

class Donut
  def glazing
    puts "This donut has glazing"
  end
  def fresh?(integer)
    if integer <= 1
      puts "This donut is still fresh!"
      elsif
      integer > 1
      puts "This donut is #{integer} days old."
    end
  end
end

def make_donuts(integer)
  x = 0
  donut_batch = []
  while x < integer
    donut_batch.push (Donut.new)
    x += 1
  end
  return donut_batch
end

donut_batch = make_donuts(50)

donut_batch.each{|donut| donut.glazing}
donut_batch.each{|donut| donut.fresh?(1)}