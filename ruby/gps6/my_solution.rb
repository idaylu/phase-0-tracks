# Virus Predictor

# I worked on this challenge [by myself ].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
#It allows this ruby file to read the data/ retrieve the data from the file that is called. Difference between require_relative and require is where the method looks for the file. Require relative is within the same folder. Require looks for the file within

require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#Print method to print predicted deaths and speed of spread
  def virus_effects
    puts "In the state of #{@state}, #{predicted_deaths} people will die due to the outbreak. The speed of spread for #{@state} is #{speed_of_spread}."
  end

#Private affects the methods visibility.
  private

#this method calculates the number of deaths based off of the density. The density will dictate what number the popluation is calculated by.
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #This method calculates the speed based off of the population density.
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do | state,population_hash|
  instance=VirusPredictor.new(state,population_hash[:population_density],population_hash[:population])
  instance.virus_effects
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
# What are the differences between the two different hash syntaxes shown in the state_data file?
#One uses symbols and the other uses the rocket symbol.
# What does require_relative do? How is it different from require?
#Require relative allows this ruby file to access and read the data in the given file.
# What are some ways to iterate through a hash?
#.each do loop is a way.We can iterate through the key value pair, or just th e key, or just the value.
# When refactoring virus_effects, what stood out to you about the variables, if anything?
#The variables are all instance variables within the methods. The method called for other methods within the class.
# What concept did you most solidify in this challenge?
#I solidified iterating through nested hashes.