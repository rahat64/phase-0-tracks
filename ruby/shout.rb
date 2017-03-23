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