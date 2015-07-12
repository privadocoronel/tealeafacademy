# 1. Write a program that contains a method called greeting that takes a name as its parameter. 
# It then prints a greeting message with the name included in it.

def greeting (name)
	puts "Hello " + name	
end
greeting ("Bong")

# 2. What do the following expressions evaluate to?

# 1. x = 2
=> 2
# 2. puts x = 2
=> nil
# 3. p name = "Joe"
=> Joe
# 4. four = "four"
=> "four"
# 5. print something = "nothing"
=> nil

# 3. Write a program that includes a method called multiply that 
# takes two arguments and returns the product of the two numbers.

def multiply (x,y)
	x * y	
end

puts multiply(2,3)

# 4. What will the following code print to the screen?

# def scream(words)
#   words = words + "!!!!"
#   return
#   puts words
# end

# scream("Yippeee")

nothing will be returned.

# 5. 1) Edit the method in exercise #4 so that it does print words on the screen.

def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")
# 2) What does it return now?
# it returns nil because of the puts

# 6. What does the following error message tell you?
supply two arguments for calling the method