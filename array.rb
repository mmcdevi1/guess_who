class Person
	attr_reader :name, :gender, :skin_color, :hair_color, :eye_color

	def initialize(name, gender, skin_color, hair_color, eye_color)
		@name       = name
		@gender     = gender
		@skin_color = skin_color
		@hair_color = hair_color
		@eye_color  = eye_color
	end

	mike      = Person.new("mike",     "male",   "white", "brown",  "brown")
	allison   = Person.new("allison",  "female", "black", "brown",  "blue")
	brittany  = Person.new("brittany", "female", "white", "blonde", "brown")
	jenny     = Person.new("jenny",    "female", "black", "brown",  "hazel")
	thomas    = Person.new("thomas",   "male",   "white", "brown",  "brown")

	@persons  = [mike, allison, brittany, jenny, thomas]

	def remove_array(attribute, input)
		case "#{attribute}"
		when "gender"
			remove = remove_instance_variable(:@gender)
		when "skin"
			remove = remove_instance_variable(:@skin)
		end

		remove_gender = @persons.delete_if { |i| i.remove == "#{input}"}
		remove_gender.each do |x|
			puts x.name
		end
	end


end
mike      = Person.new("mike",     "male",   "white", "brown",  "brown")
	allison   = Person.new("allison",  "female", "black", "brown",  "blue")
	brittany  = Person.new("brittany", "female", "white", "blonde", "brown")
	jenny     = Person.new("jenny",    "female", "black", "brown",  "hazel")
	thomas    = Person.new("thomas",   "male",   "white", "brown",  "brown")

	@persons  = [mike, allison, brittany, jenny, thomas]
@persons.remove_array("gender", "male")