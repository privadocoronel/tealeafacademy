puts "Please type in your first name?"
fname = gets.chomp
puts "Please type in your last name?"
lname = gets.chomp

fullname = fname + lname

puts "Good day to you #{fullname}."

10.times { puts fullname }