# guess = 0
# array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# random_number = Random.new.rand(array.length)
# while guess < 3
# 	guess = guess + 1
# 	puts array
# 	print "Take a guess: "
# 	answer = gets.chomp.to_i
# 	if answer == random_number
# 		puts "Correct"
# 		break
# 	else
# 		puts "try again"
# 		puts array.delete(answer)
# 	end
# 	puts "Number of guesses remaining: #{3 - guess}"
# 	puts "The number was: #{random_number}"
# end
