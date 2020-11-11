def ascii

	text = []

	File.open("ASCII.txt") { |file| 

		text = file.readlines
	}


	text.map!{ |text|

		text.split(',').map!{|el|

			el.to_i
		}	
	}

	text.flatten 

end





