class Person
	attr_reader :caffeine_level
	def initialize(name,caffeine_level)
		@name = name
		@caffeine_level = caffeine_level
	end

	def run
		"#{@name} moves quickly away, try not to draw attention to yourself"
	end

	def scream
		"#{@name} make an ear piercingly shrill wail of terror"
	end

	def drink_coffee
		@caffeine_level +=1;
		"#{@name}  feel refreshed and ready to take on the next challenge"
	end

end

class PowerRanger < Person
	def initialize(name,caffeine_level, strength,color)
		@name = name
		@caffeine_level = caffeine_level
		@strength = strength
		@color = color
	end

	def punch(person)
		puts "#{@name} throw a powerful punch"
		@caffeine_level -=1
		if @strength > 5
			person.scream
			person.run
		end
	end

def megazord(person)
	puts "#{@name} throw a MEGAZORD punch"
		@caffeine_level -=1
end

	def rest
		"#{@name} curl up in a ball and take a brief nap"
	end
end

class EvilNinja < Person
	def initialize(name,caffeine_level,strength,evilness)
		@name = name
		@caffeine_level = caffeine_level
		@strength = strength
		@evilness = evilness	
	end
	
	def punch(person)
		puts "#{@name} throw a powerful punch"
		@caffeine_level -=1
		if @strength > 5
			person.scream
			person.run
		end
	end

	def cause_mayhem(person)
		person.caffeine_level = 0;
	end

end
