# practice stand-alone module
=begin
module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yell_happily(words)
		words + " *JOYOUS*" + " ^^.^^"
	end
end


p Shout.yell_angrily("Hahahah")
p Shout.yell_happily("Hahahaha")
=end

# mix in module

module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yell_happily(words)
		words + " *JOYOUS*" + "^^.^^"
	end
end

class Tiger
	include Shout
end

class Lion
	include Shout
end

tiger = Tiger.new
lion = Lion.new

roar1 = tiger.yell_angrily("Rawwr")
roar2 = tiger.yell_happily("Roar")
roar3 = lion.yell_angrily("Growwwl")
roar4 = lion.yell_happily("zzzZ")

puts "Happy Tiger: #{roar2}, Angry Tiger: #{roar1}.."
puts "--------------------------------------"
puts "Happy Lion: #{roar4}, Angry Lion: #{roar3}.."