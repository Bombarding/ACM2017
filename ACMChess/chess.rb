class Chess
  def initialize(_save_game = true)
    board = Board
    @player = Human(board)
  end
  def play
    puts "White goes first"
    white = true
    until board(:white) || board(:black)
      begin
        board
        turn = white ? :white : :black
        puts "#{turn} team's turn"
        piece, target = @player
        raise StandardError.new("Enemy piece") if board[piece].color != turn
        raise StandardError.new("Illegal Move") unless board(piece, target)
      rescue StandardError => e
        puts "#{e.message}"
        retry
      end
      white = !white
    end
    winner = board(:white) ? "black" : "white"
    puts "CHECKMATE!!! #{winner} won!"
  end
end
Chess