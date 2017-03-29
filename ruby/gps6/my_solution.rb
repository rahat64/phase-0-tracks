# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Imports code from one file to another so the user doesn't have
# to rewrite code from previous files.
require_relative 'state_data'

class VirusPredictor

# creates an instance that requires 3 arguments
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# wrapper method that calls upon the predicted_deaths
# and speed_of_spread methods
  def virus_effects
    predicted_deaths #(@population_density, @population, @state)
    speed_of_spread #(@population_density, @state)
  end

  private # This means all methods below private won't be acessible
          # outside of this class so it's not a good idea to move 
          # private above virus_effects because we need access to 
          # that method outside our class in order to get the 
          # final summary of both methods below.

# prints out predicted number of deaths according to the calculations
# that are set up in the if, elsif, else conditions.
  #def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
  def predicted_deaths
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

# responsible for increasing speed relative to population density of 200
# and increases by .5 everytime population decreases by 50 then prints
# out a string.
  #def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
  def speed_of_spread
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

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

# my problem solving approach to run disaster reports consecutively for
# all 50 states in a non dry approach. Start by isolating the two 
# values in the hash by calling upon them with their symbol call ':'
# and assign them to two different values inside the loop.
STATE_DATA.each do |key, value|
  pop_d = value[:population_density]
  pop = value[:population]
  run_all = VirusPredictor.new(key, pop_d, pop)
  run_all.virus_effects
end


#=======================================================================
# Reflection Section
=begin
* What are the differences between the two different hash syntaxes 
  shown in the state_data file?
    - The two syntax used are the hash rocket which is '=>', and
      the symbol which is just the colon ':' placed after the key. Both
      essentially achieve the same purpose which is to assign a value
      of something to the key. One thing to note though is that the 
      key assignments via symbol cannot be assigned with strings.
* What does require_relative do? How is it different from require?
    - require_relative is used to retrieve codes from another file
      so it saves the user from having to rewrite previous code from
      that file and call upon it's contents directly. The difference
      between require and require_relative is that require_relative 
      complements require by allowing the user to load a file that
      is relative to the file containing the require_relative statement.
      When using require to load a file, this usually accesses 
      functionality that has been properly installed, and made accesible.
      Require does not offer a good solution for loading files within
      the project's code. This may be useful during a development phase
      for accessing test dat, or even accessing files that are locked
      away inside a project, not intended for outside use.
* What are some ways to iterate through a hash?
    - The most efficient way is to use a .each do loop. 
      There's also the sort.map option available.
* When refactoring virus_effects, what stood out to you about the 
  variables, if anything?
    - I noticed that virus_effects doesn't take any arguments. In 
      contrast, the private methods called inside virus_effects do. 
      So I decided to pay attention to the arguments inside the private
      methods and came to the realization that they are no different 
      than the ones being called in the initialize method which makes
      them meaningless cause I already have those values stored once
      the instance has been initialized so I decided to get rid of the
      arguments for both private methods and the code still ran the same.
* What concept did you most solidify in this challenge?
    - I solidified my debugging skills to make sure I print out every
      output before the error to get a visual understanding of what's 
      being stored. Furthermore, I also found a way to improvise my
      nested method calls for isolating seperate values.

=end
