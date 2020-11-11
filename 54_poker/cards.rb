lines = []

@player1_hands = []

@player2_hands = []

File.open("all_cards.txt") { |file|

	lines = file.readlines

  }

 lines.map!{ |line|

 	line.chomp.split(' ')

 }
 

lines.map!{ |line|

	@player1_hands << line.slice(0, 5)

	@player2_hands << line.slice(5, 5)

}


	









