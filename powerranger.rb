class Person
	attr_accessor :caffeine_level, :name
	def initialize(name, caffeine_level)
		@name = name
		@caffeine_level = caffeine_level
	end

	def run
		puts "#{@name} moves quickly away while trying to not to draw attention to themself"
	end

	def scream
		puts "#{@name} makes an ear piercingly shrill wail of terror"
	end

	def drink_coffee
		@caffeine_level +=1;
		puts "#{@name} feels refreshed and ready to take on the next challenge."
	end

end

module Fighting
	def fight(person)
		self.punch(person)
	end
end

class PowerRanger < Person
	include Fighting
	def initialize(name,caffeine_level, strength,color)
		@name = name
		@caffeine_level = caffeine_level
		@strength = strength
		@color = color
	end

	def punch(person)
		puts "#{@name} throws a powerful punch at #{person.name}"
		@caffeine_level -=1
		if @strength > 5
			person.scream 
			person.run
		end
	end

	def megazord(person)
		puts "#{@name} throws a MEGAZORD punch at #{person.name}"
		@caffeine_level -=1
 	end

	def rest
		puts "#{@name} curls up in a ball and takes a brief nap."
	end
end

class EvilNinja < Person
	include Fighting
	def initialize(name,caffeine_level,strength,evilness)
		@name = name
		@caffeine_level = caffeine_level
		@strength = strength
		@evilness = evilness	
	end
	
	def punch(person)
		puts "#{@name} throws a powerful punch at #{person.name}"
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


def fight_scene
	per1 = Person.new("bob",5)
	per2 = Person.new("joe",5)

	power1 = PowerRanger.new("sam",25,10,'blue')
	power2 = PowerRanger.new("sarah",25,10,'red')

	ninja1 = EvilNinja.new("graphm",20,20,20)
	ninja2 = EvilNinja.new("wanda",20,20,20)

	per1.drink_coffee
	ninja1.fight(per1)
	ninja2.cause_mayhem(per2)
	power1.fight(ninja1)
	power2.megazord(ninja1)
end

fight_scene