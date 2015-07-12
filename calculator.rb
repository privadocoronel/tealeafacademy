loop do
puts "First number:"
num1 = gets.chomp

puts "Second number:"
num2 = gets.chomp

puts "Choose an operation: \n 1. Addition \n 2. Subtraction \n 3. Multiplication \n 4. Division"
operator = gets.chomp.to_i
	case operator
		when 1
			#puts "#{num1.to_i + num2.to_i}"
			result = num1.to_i + num2.to_i			
		when 2
			# puts "#{num1.to_i - num2.to_i}"
			result = num1.to_i - num2.to_i			
		when 3
			# puts "#{num1.to_i * num2.to_i}"
			result = num1.to_i + num2.to_i			
		when 4 
			# puts "#{num1.to_f / num2.to_f}"
			result = num1.to_i + num2.to_i		
		else
		 puts "Choose again"
		 next
	end	
	puts "The result is #{result}."	
	puts "do you want to go again?(y/n)"
	break  if gets.chomp.downcase == 'n'
end

puts "Thank you."