# 1. Below we have given you an array and a number. Write a program 
# that checks to see if the number appears in the array.

arr = [1, 3, 5, 7, 9, 11]
number = 17

if arr.include?(number) 
	puts "#{number} is in the array." 
else
	puts "#{number} is not included."
end

# 2. What will the following programs return? What is value of arr after each?

# 1. arr = ["b", "a"]
#    arr = arr.product(Array(1..3))
#    arr.first.delete(arr.first.last)

# 2. arr = ["b", "a"]
#    arr = arr.product([Array(1..3)])
#    arr.first.delete(arr.first.last)

1. returns 1
    arr =  [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

2. returns [1, 2, 3]
    arr = [["b"], ["a", [1, 2, 3]]]

puts "----------------------------------"
puts ""

# 3. How do you print the word "example" from the following array?
arr = [["test", "hello", "world"],["example", "mem"]]

puts arr[1][0]

puts "----------------------------------"
puts ""

# 4. What does each method return in the following example?

# arr = [15, 7, 18, 5, 12, 8, 5, 1]

# 1. arr.index(5)
=> 3
# 2. arr.index[5]
=> error
# 3. arr[5]
=> 8

# 5. What is the value of a, b, and c in the following program?

# string = "Welcome to Tealeaf Academy!"
# a = string[6]
=> 'e'
# b = string[11]
=> 'T'
# c = string[19]
=> 'A'

# 6. You run the following code...

names = ['bob', 'joe', 'susan', 'margaret']
names[3] = 'jody'

puts names

puts "----------------------------------"
puts ""

# 7. Write a program that iterates over an array and builds a new array that is the result 
# of incrementing each value in the original array by a value of 2. You should have two arrays 
# at the end of this program, The original array and the new array you've created. 
# Print both arrays to the screen using the p method instead of puts.

orig_arr = Array(1..10)
new_arr = []

orig_arr.each do |num|
	new_arr.push (num + 2)
end

p orig_arr
p new_arr











