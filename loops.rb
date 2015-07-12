# # 1. What does the each method in the following program return after it is finished executing?

# # x = [1, 2, 3, 4, 5]
# # x.each do |a|
# #   a + 1
# # end
# => [1,2,3,4,5]

# # 2. Write a while loop that takes input from the user, performs an action, and 
# # only stops when the user types "STOP". Each loop can get info from the user.

# input = ""
# while input != "STOP"
# 	puts "Input anything:"
# 	input = gets.chomp.upcase	
# 		if input == "STOP"		
# 		break
# 		end
# 	puts "This will only exit if you type STOP"
# 	input = gets.chomp.upcase
# end

# # 3. Use the each_with_index method to iterate through an array of your creation 
# # that prints each index and value of the array.

# arr = ["Lakers", "Cavaliers", "Bulls", "Warriors", "Heat"]

# arr.each_with_index do | val, index |
# 	puts "#{index + 1}." + " " + "#{ val}"
# end

# # 4. Write a method that counts down to zero using recursion.

# def countdown(num)
# 	if num <= 0
# 		puts num
# 	else 
# 		puts num
# 		countdown(num - 1)	
# 	end
# end
# countdown(10)
x =''
while x != 'stop'
	puts "type stop"
	ans = gets.chomp
		if ans == 'stop'
			break
		end
	puts "try again?"
	x = gets.chomp
end





