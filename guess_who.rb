class Suspect
	attr_reader :name, :gender, :skin_color, :hair_color, :eye_color

	def initialize(name, gender, skin_color, hair_color, eye_color)
		@name       = name
		@gender     = gender
		@skin_color = skin_color
		@hair_color = hair_color
		@eye_color  = eye_color
	end
end

class Game
	attr_accessor :suspects, :chosen_one, :number_of_guesses

	def initialize(number_of_guesses)
		@number_of_guesses = number_of_guesses
	  @suspects = []
		create_suspects
		game_play
	end
	    
	def create_suspects
		suspects << Suspect.new("rachel",   "girl", "black", "auburn", "brown")
		suspects << Suspect.new("mac",      "boy",  "black", "brown",  "blue")
		suspects << Suspect.new("nick",     "boy",  "white", "blonde", "brown")
		suspects << Suspect.new("angie",    "girl", "black", "brown",  "green")
		suspects << Suspect.new("theo",     "boy",  "white", "brown",  "brown")
		suspects << Suspect.new("joshua",   "boy",  "black", "brown",  "blue")
		suspects << Suspect.new("emily",    "girl", "white", "brown",  "brown")
		suspects << Suspect.new("jason",    "boy",  "black", "brown",  "blue")
		suspects << Suspect.new("john",     "boy",  "white", "blonde", "brown")
		suspects << Suspect.new("grace",    "girl", "black", "brown",  "green")
		suspects << Suspect.new("jake",     "boy",  "white", "brown",  "brown")
		suspects << Suspect.new("megan",    "girl", "black", "brown",  "blue")
		suspects << Suspect.new("ryan",     "boy",  "black", "auburn", "brown")
		suspects << Suspect.new("brandon",  "boy",  "black", "brown",  "blue")
		suspects << Suspect.new("beth",     "girl", "white", "blonde", "brown")
		suspects << Suspect.new("diane",    "girl", "black", "brown",  "green")
		suspects << Suspect.new("chris",    "boy",  "white", "brown",  "brown")
		suspects << Suspect.new("david",    "boy",  "black", "brown",  "blue")
		suspects << Suspect.new("michelle", "girl", "white", "brown",  "brown")
		suspects << Suspect.new("tyson",    "boy",  "black", "brown",  "blue")
		suspects << Suspect.new("ursula",   "girl", "white", "blonde", "brown")
		self.chosen_one = suspects.shuffle.pop
	end

  def print_suspect_list
  	puts "----------------------"
		puts "Suspect List: "
		puts "----------------------"

	  suspects.each do |suspect|
		  puts suspect.name.capitalize
		end

		puts "----------------------"
		puts ""		
	end

	def game_play
		puts ""
		puts "Welcome to Guess The Chosen One."
		puts ""
		puts "Directions: Guess The Chosen One. But, first choose an attribute."
		puts "            You have 3 attempts to guess The Chosen One."
		print_suspect_list

		guess = 0
		while guess < number_of_guesses
			guess += 1
			puts "Type 'e' or 'exit' to exit anytime."
			puts ""
			print "Please choose an attribute (Gender, Skin, Hair, Eye): "
			answer = gets.chomp.downcase

			case answer
			when "e" 
				puts "The suspect was #{chosen_one.name.capitalize}"
				break
			when"exit"
				puts "The suspect was #{chosen_one.name.capitalize}"
				break
			when "gender"
				print "Choose (Boy or Girl): "
				gender_answer = gets.chomp.downcase
				puts ""
				if gender_answer == chosen_one.gender
					puts "YES! The suspect is a #{gender_answer}."
				else
					puts "NO! The suspect is not a #{gender_answer}."
				end
				case gender_answer
				when "boy"
					if chosen_one.gender == "boy"
						chosen_one_gender =  @suspects.select! { |suspect| suspect.gender == "boy" }
					else
						chosen_one_gender =  @suspects.select! { |suspect| suspect.gender == "girl" }
					end
				  print_suspect_list
				when "girl"	
					if chosen_one.gender == "girl"
						chosen_one_gender =  @suspects.select! { |suspect| suspect.gender == "girl" }
					else
						chosen_one_gender =  @suspects.select! { |suspect| suspect.gender == "boy" }
					end
				  print_suspect_list
				end
				print "Guess the suspect: "
				gender_guess = gets.chomp.downcase
				puts ""
				if gender_guess == chosen_one.name
					puts "Correct"
					break
				else
					@suspects.delete_if { |suspect| suspect.name == gender_guess }
					if guess == number_of_guesses
						puts ""
						puts "You Lose! The Chosen One was #{chosen_one.name.capitalize}."
						puts ""
					else
						puts "NO! The Chosen One is not #{gender_guess.capitalize}. Try again!"
						puts ""
					end
				end
			when "skin"
				print "Choose (Black or White): "
				skin_answer = gets.chomp.downcase
				puts ""
				if skin_answer == chosen_one.skin_color
					puts "YES! The suspect is #{skin_answer}."
				else
					puts "NO! The suspect is not #{skin_answer}."
				end
				case skin_answer
				when "black"
					if chosen_one.skin_color == "black"
						chosen_one_skin_color =  @suspects.select! { |suspect| suspect.skin_color == "black" }
					else
						chosen_one_skin_color =  @suspects.select! { |suspect| suspect.skin_color == "white" }
					end
				  # chosen_one_skin_color.each do |person|
				  #   puts person.name
				  # end
				  print_suspect_list
				when "white"	
					if chosen_one.skin_color == "white"
						chosen_one_skin_color =  @suspects.select! { |suspect| suspect.skin_color == "white" }
					else
						chosen_one_skin_color =  @suspects.select! { |suspect| suspect.skin_color == "black" }
					end
				  # chosen_one_skin_color.each do |person|
				  #   puts person.name
				  # end
				  print_suspect_list
				end
				print "Guess the suspect: "
				suspect_guess = gets.chomp.downcase
				puts ""
				if suspect_guess == chosen_one.name
					puts "Correct"
					break
				else
					@suspects.delete_if { |suspect| suspect.name == suspect_guess }
					if guess == number_of_guesses
						puts ""
						puts "You Lose! The Chosen One was #{chosen_one.name.capitalize}."
						puts ""
					else
						puts "NO! The Chosen One is not #{suspect_guess.capitalize}. Try again!"
						puts ""
					end
				end
			when "eye"
				print "Choose (Blue, Brown, or Green): "
				eye_color_answer = gets.chomp.downcase
				puts ""
				if eye_color_answer == chosen_one.eye_color
					puts "YES! The suspect has #{eye_color_answer} eyes."
				else
					puts "NO! The suspect does not have #{eye_color_answer} eyes."
				end
				case eye_color_answer
				when "blue"
					if chosen_one.eye_color == "blue"
						chosen_one_eye_color =  @suspects.select! { |suspect| suspect.eye_color == "blue" }
					else
						chosen_one_eye_color =  @suspects.select! { |suspect| suspect.eye_color == "brown" || suspect.eye_color == "green" }
					end
				  print_suspect_list
				when "brown"	
					if chosen_one.eye_color == "brown"
						chosen_one_eye_color =  @suspects.select! { |suspect| suspect.eye_color == "brown" }
					else
						chosen_one_eye_color =  @suspects.select! { |suspect| suspect.eye_color == "blue" || suspect.eye_color == "green" }
					end
				  print_suspect_list
				when "green"
					if chosen_one.eye_color == "green"
						chosen_one_eye_color =  @suspects.select! { |suspect| suspect.eye_color == "green" }
					else
						chosen_one_eye_color =  @suspects.select! { |suspect| suspect.eye_color == "blue" || suspect.eye_color == "brown" }
					end
				  print_suspect_list
				end
				print "Guess the suspect: "
				suspect_guess = gets.chomp.downcase
				puts ""
				if suspect_guess == chosen_one.name
					puts "Correct"
					break
				else
					@suspects.delete_if { |suspect| suspect.name == suspect_guess }
					if guess == number_of_guesses
						puts ""
						puts "You Lose! The Chosen One was #{chosen_one.name.capitalize}."
						puts ""
					else
						puts "NO! The Chosen One is not #{suspect_guess.capitalize}. Try again!"
						puts ""
					end
				end
			when "hair"
				print "Choose (Blonde, Brown, or Auburn): "
				hair_color_answer = gets.chomp.downcase
				puts ""
				if hair_color_answer == chosen_one.hair_color
					puts "YES! The suspect has #{hair_color_answer} hair."
				else
					puts "NO! The suspect does not have #{hair_color_answer} hair."
				end
				case hair_color_answer
				when "blonde"
					if chosen_one.hair_color == "blonde"
						chosen_one_hair_color =  @suspects.select! { |suspect| suspect.hair_color == "blonde" }
					else
						chosen_one_hair_color =  @suspects.select! { |suspect| suspect.hair_color == "brown" || suspect.hair_color == "auburn" }
					end
				  print_suspect_list
				when "brown"	
					if chosen_one.hair_color == "brown"
						chosen_one_hair_color =  @suspects.select! { |suspect| suspect.hair_color == "brown" }
					else
						chosen_one_hair_color =  @suspects.select! { |suspect| suspect.hair_color == "blonde" || suspect.hair_color == "auburn" }
					end
				  print_suspect_list
				when "auburn"
					if chosen_one.hair_color == "auburn"
						chosen_one_hair_color =  @suspects.select! { |suspect| suspect.hair_color == "auburn" }
					else
						chosen_one_hair_color =  @suspects.select! { |suspect| suspect.hair_color == "blonde" || suspect.hair_color == "brown" }
					end
				  print_suspect_list
				end
				print "Guess the suspect: "
				suspect_guess = gets.chomp.downcase
				puts ""
				if suspect_guess == chosen_one.name
					puts "Correct"
					break
				else
					@suspects.delete_if { |suspect| suspect.name == suspect_guess }
					if guess == number_of_guesses
						puts ""
						puts "You Lose! The Chosen One was #{chosen_one.name.capitalize}."
						puts ""
					else
						puts "NO! The Chosen One is not #{suspect_guess.capitalize}. Try again!"
						puts ""
					end
				end
			end #end case

			# puts "The Chosen One is: #{chosen_one.name}"
			if guess == number_of_guesses
				puts ""
			else
				puts "Number of guesses remaining: #{number_of_guesses - guess}"
			end
		end
	end

end

Game.new(4)






























