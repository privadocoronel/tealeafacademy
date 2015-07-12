# 1. Write down whether the following expressions return true or false. 
# Then type the expressions into irb to see the results.

# 1. (32 * 4) >= 129
=> false
# 2. false != !true
=> false
# 3. true == 4
=> false
# 4. false == (847 == '874')
=> true
# 5. (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false
=> true

# 2. Write a method that takes a string as argument. The method should return the all-caps version of the string, only if the string is longer than 10 characters. Example: change "hello world" to "HELLO WORLD". 
# (Hint: Ruby's String class has a few methods that would be helpful. Check the Ruby Docs!)

def allcaps(word)
	if word.length > 10
		puts word.upcase
	else
		puts word
	end
end

allcaps("bong")
allcaps("privadocoronel")

puts "----------------------------------"
puts ""

# 3. Write a program that takes a number from the 
# user between 0 and 100 and reports back whether the number is between 0 and 50, 50 and 100, or above 100.
# 5. Rewrite your program from exercise 3 using a case statement. 
# 	Wrap each statement in a method and make sure they both still work.
def zero_to_hundred (number)
	
	if number <= 50
		puts "number is between 0 and 50"
	elsif number <= 100
		puts "number is between 50 and 100"
	else
		puts "number is above 100"			
	end

end

def zero_to_hundred_2 (number)
	
	case 

	when number <= 50
		puts "number is between 0 and 50"
	when number <= 100
		puts "number is between 50 and 100"
	else 
		puts "number is above 100"	
	end

end

puts "Please give a number between 0 to 100."
number = gets.chomp.to_i

zero_to_hundred (number)
zero_to_hundred_2 (number)


