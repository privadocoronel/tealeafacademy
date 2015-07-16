# 1. all players will pick either rock, paper, scissors.
# 2. compare r > s, s > p, p > r
# 3. Play again

CHOICES = ['r', 'p', 's']

def display_computers_pick (comp_pick)
	puts "The computer picked #{comp_pick}!"	
end

loop do
	players_pick = ''
	# player chooses\
	while !CHOICES.include?(players_pick)
		puts "Pick your choice: (r = rock, p = paper, s = scissors)"
		players_pick = gets.chomp.downcase
	end

	# computer makes a pick	
	computers_pick = CHOICES.sample

	if players_pick == computers_pick
		puts "It's a tie!"
		display_computers_pick (computers_pick) 
	elsif (players_pick == 'p' && computers_pick == 'r') || (players_pick== 'r' && computers_pick == 's') ||
	 	(players_pick == 's' && computers_pick == 'p')
	 	puts "You Win!"
	 	display_computers_pick (computers_pick)
	else
	 	puts "You Lose!"
	 	display_computers_pick (computers_pick)
	end

	# puts "Play again? (y/n)"
	# break if gets.chomp.downcase != 'y'

  puts "Play again? (y/n)"
  answer = gets.chomp.downcase 

  if answer == 'y'
    next
  else
    break
  end


end

puts "Game Over!!!"
