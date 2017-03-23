class Santa
  
	attr_reader :ethnicity
  	attr_accessor :gender, :age
	
	def initialize(gender, ethnicity, age)
	  	@gender = gender 
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = age
		puts "**********************"
		puts "Initializing Santa instance.."
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end
	
	def get_mad_at(str)
	  	if @reindeer_ranking.include?(str)
	    	r = @reindeer_ranking.index(str)
	    	@reindeer_ranking.insert(8, @reindeer_ranking.delete_at(r))
	  	else
	    	puts "Not in the roster."
	  end
	end
	
	def celebrate_b_day
	  	@age = age + 1
	end
	
	def summary
	  	puts "Gender: #{@gender}"
	  	puts "ethnicity: #{@ethnicity}"
	  	p @reindeer_ranking
	  	puts "Age: #{@age}"
	  	puts "----------------------"
	end
	
	#getter methods
	# def age
	#  @age
	# end
	
	# def ethnicity
	#  @ethnicity
	# end
	
	#setter methods
	# def gender=(new_gender)
	#  @gender = new_gender
	#end
	
end

santas = []
some_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
some_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
new_age = 0
while santas.length <= 100
	idx = 0
  	santas << Santa.new(some_genders.sample, some_ethnicities.sample, new_age)
  	new_age = Random.rand(0..140)
  	santas[idx].summary
  	santas[idx].speak
  	idx += 1
end

santas[0].get_mad_at("Rudolph")
santas[0].summary
santas[1].get_mad_at("Tanya")
santas[1].summary
santas[1].celebrate_b_day
santas[1].gender = "unigender"
santas[1].summary
santas[50].summary
santas[60].summary