# 1. Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each { |num| print num }

puts "----------------------------------"
puts ""

# 2. Same as above, but only print out values greater than 5.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each do |num|
	if num > 5
		puts num
	end
end

puts "----------------------------------"
puts ""

# 3. Now, using the same array from #2, use the select method to extract all odd numbers into a new array.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
new_arr = []

new_arr = arr.select do |num|
	num.odd?
end

puts new_arr

puts "----------------------------------"
puts ""

# 4. Append "11" to the end of the original array. Prepend "0" to the beginning.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.push(11)
arr.unshift(0)

puts "----------------------------------"
puts ""

# 5. Get rid of "11". And append a "3"

arr.pop
arr.push(3)

# 6. Get rid of duplicates without specifically removing any one value.

arr.uniq!

puts "----------------------------------"
puts ""

# 7. What's the major difference between an Array and a Hash?

# Array is focused on order, and can be accessed by index, hash is accessed by keys and values.

hash = { :name => "bong"}
hash = { name: "bong"}

# 9. Suppose you have a hash 
h = {a:1, b:2, c:3, d:4}

# 1. Get the value of key `:b`.
h[:b]

# 2. Add to this hash the key:value pair `{e:5}`
h[:e] = 5

# 3. Remove all key:value pairs whose value is less than 3.5
h.delete_if {|k,v| v < 3.5 }

# 10. Can hash values be arrays? Can you have an array of hashes? (give examples)

h = {names: ["bong", "jona"]}
arr = [{name: "bong"}, {age: "21"}, {location: "philippines"} ]

# 12. Given the following data structures. Write a program that moves 
# the information from the array into the empty hash that applies to the correct person.

# contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
#             ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

# contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

# 15. Use Ruby's Array method delete_if and String method start_with? to delete all 
# of the words that begin with an "s" in the following array.

arr.delete_if { |word| word.start_with?("s", "w") }
