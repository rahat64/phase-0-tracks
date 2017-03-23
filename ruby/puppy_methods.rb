class Puppy
	def fetch(toy)
    	puts "I brought back the #{toy}!"
    	toy
  	end

  	def speak(int)
  		bark = "Woof! " * int
  		puts "#{bark}"
  	end

  	def roll_over
  		puts "*rolls over*"
  	end

  	def dog_years(year)
  	  	year = Float(year)
  	  	if year <= 21
  	    	d_year = year / 10.5
  	    	puts "#{d_year} dog years in #{year} human years"
  	  	else
  	    	final_d_year = year - 21
  	    	d_year = final_d_year / 4 + 2
  	    	puts "#{d_year} dog years in #{year} human years"
  	  	end
  	end

  	def initialize
  		puts "Initializing new puppy instance..."
  	end
end

spike = Puppy.new
spike.fetch("ball")
spike.speak(5)
spike.dog_years(22)
spike.dog_years(50)
spike.dog_years(14)
spike.roll_over

class Elements
	def initialize
		puts "Initializing new element instance"
	end

  def fire
    puts "*sizzle*/burn"
  end

  def water
    puts "*splash*"
  end

  def earth
    puts "crush!"
  end
end

elementals = []

50.times do
  elementals << element = Elements.new
end

elementals.each {|e| e.fire}
elementals.each {|e| e.water}
elementals.each {|e| e.earth}
