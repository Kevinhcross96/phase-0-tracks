# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----
def arrayQuestion1
  zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]
  i = 0
  while i < zombie_apocalypse_supplies.length
	 puts zombie_apocalypse_supplies[i] + "*"
	 i += 1
  end
end


# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----


def alphabetize(arr, rev=false)
        if rev
            arr.sort { |firstItem, secondItem|            
            secondItem <=> firstItem }
        else
           arr.sort { |firstItem, secondItem|            
           firstItem <=> secondItem }

        end
    end

#puts alphabetize(zombie_apocalypse_supplies)


# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----
def supplyCheck(supply)
zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
"shotgun", "compass", "CB radio", "batteries"]
j = 0
while j < zombie_apocalypse_supplies.length
	if supply == zombie_apocalypse_supplies[j]
		return true
	end
	j += 1
	end
	return false
end



# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----

def carryLess
  k = 0
  answer = []
  zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
  "shotgun", "compass", "CB radio", "batteries"]
	while k < zombie_apocalypse_supplies.length && answer.length < 5
		answer.push zombie_apocalypse_supplies[k]
    k += 1
	end
	zombie_apocalypse_supplies = answer
  return zombie_apocalypse_supplies
end

#puts carryLess


# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
# ----
def combineSupplies
  groupSupplies = []
  k = 0
  j = 0
  other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
  zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                            "shotgun", "compass", "CB radio", "batteries"]
  while k < other_survivor_supplies.length
    groupSupplies.push other_survivor_supplies[k]
    k += 1
  end

  while j < zombie_apocalypse_supplies.length
    groupSupplies.push zombie_apocalypse_supplies[j]
    j += 1
  end

  finalGroupSupplies = groupSupplies.uniq

  return finalGroupSupplies
end

#puts combineSupplies

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----

def hash1

  extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

  extinct_animals.each do |animal, year|
    puts "#{animal}-"
    puts year
    puts "*"
  end
end

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----

def hash2
  extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}
  extinct_animals.each do |animal, year|
    if year < 2000
      puts "#{animal}-"
      puts year
      puts "*"
    end
  end
end

#hash2

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----

def hash3
  extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}
  updated_extinct_animals = extinct_animals.map {|animal, year| animal = animal,
    year = year - 3}
  puts updated_extinct_animals
end

#hash3


# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----

def hash4(newAnimal)
  extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
  }
  extinct_animals.each do |animal, year|
    if animal == newAnimal
      return true
    end
  end
  return false
end

#puts hash4("Saiga Antelope")
  

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----
#
def hash5
  extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
  }
  return extinct_animals.assoc("Passenger Pigeon")
  extinct_animals.delete_if {|animal, year| animal == "Passenger Pigeon"}
end

#puts hash5
