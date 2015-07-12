# 1. Write a program that checks if the sequence of characters "lab" exists in the following 
# strings. If it does exist, print out the word.

def has_lab (string)
	if string =~ /lab/
		puts "string exist"
	else
		puts "it does not exist"
	end
end

has_lab("laboratory")
has_lab("experiment")
has_lab("Pans labyrinth")
has_lab("elaborate")
has_lab("polar bear")

# 2. What will the following program print to the screen? What will it return?

# def execute(&block)
#   block
# end

# execute { puts "Hello from inside the execute method!" }
# def execute(&block)
#   block.call
# end

# execute { puts "Hello from inside the execute method!" }

nothing is printed, no .call method 
=> <Proc:0x007fcf53949e70@(irb):65>

# 4. Modify the code in exercise 2 to make the block execute properly.

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# 5. Why does the following code...

# def execute(block)
#   block.call
# end

# execute { puts "Hello from inside the execute method!" }

no ampersand symbol on the parameter