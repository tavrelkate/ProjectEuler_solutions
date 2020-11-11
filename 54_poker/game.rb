require_relative 'hand'

require_relative 'cards'

player1_wins = 0

(0...1000).each{ |i|

	player1_hand = Hand.new(@player1_hands[i])

 	player2_hand = Hand.new(@player2_hands[i])

 	if  player1_hand > player2_hand

 		player1_wins += 1

 	elsif player1_hand == player2_hand

 		case player1_hand.power

 		when 9 || 5 || 1 # hight card, stralght, flush_stralght

 			player1_wins += 1 if player1_hand.info[:kiker] > player1_hand.info[:kiker]
 		else

 			if player1_hand.info[:hight_of_equal] > player2_hand.info[:hight_of_equal]

 				player1_wins += 1

 			elsif player1_hand.info[:hight_of_equal] == player2_hand.info[:hight_of_equal]

 				player1_wins += 1 if player1_hand.info[:kiker] > player2_hand.info[:kiker]
			end
		end
	end
}

puts "count player1 wins : #{player1_wins}" 






