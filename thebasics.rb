# 1. Add two strings together that, when concatenated, return your 
# first and last name as your full name in one string.

puts "Privado " + "Coronel"


puts "----------------------------------"
puts ""

# 2. Use the modulo operator, division, or a combination of both to take a 
# 4 digit number and find 1) the thousands number 
# 2) the hundreds 3) the tens and 4) and the ones.

x = 9876

puts "the thousands value of #{x} is #{x / 1000}"
puts "the hundreds value of #{x} is #{x % 1000 / 100 }"
puts "the tens value of #{x} is #{x % 1000 % 100  / 10}"
puts "the tens value of #{x} is #{x % 1000 % 100  % 10 / 1}"

puts "----------------------------------"
puts ""

# 3. Write a program that uses a hash to store a list of movie titles with the year they came out. Then use the puts 
# command to make your program print out the year of each movie to the screen. 
# The output for your program should look something like this.

movies = { Nashville: 1975,
	Troy: 2004,
	Frozen: 2013,
	The_Lord_of_the_Rings: 2001,
	Mad_Max_2: 1981	}

puts movies[:Nashville]
puts movies[:Troy]
puts movies[:Frozen]
puts movies[:The_Lord_of_the_Rings]
puts movies[:Mad_Max_2]

puts "----------------------------------"
puts ""

# 4. Use the dates from the previous example and store them in an array. Then make your program 
# output the same thing as exercise 3.

movies = [1975, 2004, 2013, 2001, 1981]

puts movies[0]
puts movies[1]
puts movies[2]
puts movies[3]
puts movies[4]

puts "----------------------------------"
puts ""

# 5. Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.

puts 5 * 4 * 3 * 2 * 1
puts 6 * 5 * 4 * 3 * 2 * 1
puts 7 *  6 * 5 * 4 * 3 * 2 * 1
puts 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1

puts "----------------------------------"
puts ""

# 6. Write a program that calculates the squares of 3 float numbers of your 
# choosing and outputs the result to the screen.

puts 1.2 * 1.2
puts 67.45 * 67.45
puts 2.2 * 2.2

puts "----------------------------------"
puts ""

# 7. What does the following error message tell you?
# SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
#     from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'

#  you closed your hash with a ) instead of a }




