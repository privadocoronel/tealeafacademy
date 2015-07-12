# 1. all players will pick either rock, paper, scissors.
# 2. compare r > s, s > p, p > r
# 3. Play again

CHOICES = {'p' => 'paper', 'r' => 'rock', 's' => 'scissors'}
def display_winning_message(winning_choice)
	case winning_choice
	when 'p'
		puts 'Paper wraps Rock'
	when 'r'
		puts 'Rock smashes Scissors'
	when 's'
		puts 'Scissors cuts Paper'
	end
end

loop do
	# player makes a pick
	begin
		puts "Pick: (p, r, s)"
		players_choice = gets.chomp.downcase
	end until CHOICES.keys.include?(players_choice)

	# computer makes a pick	
	 computer_choice = CHOICES.keys.sample

	 if players_choice == computer_choice
	 	puts "It's a tie."
	 elsif (players_choice == 'p' && computer_choice == 'r') || (players_choice == 'r' && computer_choice == 's') ||
	 	(players_choice == 's' && computer_choice == 'p')
	 	display_winning_message(players_choice)
	 	puts "You won!"
	 else
	 	display_winning_message(computer_choice)
	 	puts "Computer Won."
	 end	

	 puts "PLay again? (y/n)"
	 break if gets.chomp.downcase != 'y'
end

puts "Good Bye!"
