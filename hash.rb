# 1. Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in 
# select method to gather only immediate family members' names into a new array.

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

 imm_family = family.select do |key,value|
 	key == :sisters || key == :brothers
 end

arr = imm_family.values.flatten

# 2. Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and 
# merge!? Write a program that uses both and illustrate the differences.

h = { a: 1, b: 2, c: 3 }
nh = { d: 4, e: 5, f: 6 }

h.merge(nh) 
=> {:a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6}

h remains unchanged

=> h = { a: 1, b: 2, c: 3 }

h = { a: 1, b: 2, c: 3 }
nh = { d: 4, e: 5, f: 6 }

h.merge!(nh)  

h got mutated

=> {:a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6}

# 3. Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. 
# Then write a program that does the same thing except printing the values. Finally, write a program that prints both.

coronels = { father: "Bong", mother: "jona", sister: "Miehl", brother: "Kiehl"}

coronels.each { |k,v| puts k }
coronels.each { |k,v| puts v }
coronels.each { |k,v| puts k, v }

# 4. Given the following expression, how would you access the name of the person?

# person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

person[:name]

# 5. What method could you use to find out if a Hash contains a specific value in it? Write a program to demonstrate this use.

coronels = { father: "Bong", mother: "jona", sister: "Miehl", brother: "Kiehl"}

coronels.has_value?("Bong")

if coronels.has_value?("Bong")
  puts "hi dad"
else
  puts "not found"
end

# 7. Given the following code...

# x = "hi there"
# my_hash = {x: "some value"}
# my_hash2 = {x => "some value"}

# What's the difference between the two hashes that were created?

my_hash = {x: "some value"}
the key is a symbol
my_hash2 = {x => "some value"}
the key is a string

