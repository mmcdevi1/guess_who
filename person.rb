class Job
	def job
		"Civil Engineer"
	end
end

class Car
	attr_reader :name
	attr_accessor :occupants, :family

	def initialize(name)
		@name      = name
		@occupants = []
		@family    = []
		create_family
	end

	def color
		"red"
	end

	def create_family
		family << Person.new("John", "Wayne", 50)
		family << Person.new("Mary", "Wayne", 45)
		family << Person.new("Bob",  "Wayne")
	end

	def add_occupants(occupant)
		if occupants.count < 2
			occupants << occupant
			puts "Added Occupant: #{occupant.full_name}"
		elsif occupants.count >= 2
			occupants << occupant
			puts "Hey need to put on seatbelt"
		else
			puts "Go"
		end
	end

end

class Person < Car
	attr_accessor :first_name, :last_name, :age

	def initialize(first_name, last_name, age=0)
		@first_name = first_name
		@last_name  = last_name
		@age        = age
	end

	#getter method
	def first_name
		@first_name
	end

	#setter method
	def age=(new_age) 
		@age = new_age
	end

	def full_name
		first_name + " " + last_name
	end

end





car = Car.new("Ford")
car.family.each do |person|
	puts person.full_name
	puts person.age
end

car.add_occupants(car.family.pop)
car.add_occupants(car.family.pop)
car.add_occupants(car.family.pop)


person1 = Person.new("Bob", "Dole")
puts person1.color

































