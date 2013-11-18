class Person
	def initialize(name,caffeine_level)
		@name = name
		@caffeine_level = caffeine_level
	end

	def run
		"Move quickly away, try not to draw attention to yourself"
	end

	def scream
		"You make an ear piercingly shrill wail of terror"
	end

	def drink_coffee
		@caffeine_level +=1;
		"You feel refreshed and ready to take on the next challenge"
	end

end

class PowerRanger
end

class EvilNinja
end
