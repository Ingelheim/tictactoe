class Board

	def initialize(size=3)
		@size = size
		@board = nil
	end

	def size
		@size
	end

	def board
		@board
	end

	def create
		@board = []
		size.times do
			row = []
			size.times do
				row << "E"
			end
			@board << row
		end
	end

	def update_marker(sign, place)
		if board.count-1 >= place[0] && board[place[0]].count-1 >= place[1]
			if @board[place[0]][place[1]] == "E"
				@board[place[0]][place[1]] = sign
			else
				"already taken"
			end
		else
			"not on board"
		end
	end

	def show(place)
		board[place[0]][place[1]]
	end

	def show_board
		board
	end
end
