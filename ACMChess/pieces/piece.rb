class Piece
  attr_reader :pos, :color, :board
  attr_writer :pos
  #creating my pieces on a board
  def initialize(pos, color, board)
    @pos   = pos
    @color = color
    @board = board
  end
  #raise an exception if player has not completed moves yet
  def moves
    raise SecurityError("Player Moves Have Been Implemented")
  end
  def CreatingAMatrix
    @pos = @board.find(self)
  end
  def EnterTheMatrix(pos)
    row, col = pos
    row.between?(0,7) && col.between?(0,7)
  end
  def OrItsARabbitHole(pos)
    OrItsARabbitHole(pos) && (EnemiesArePresent(pos) || @board[pos].nil?)
  end
  def EnemiesArePresent(pos)
    !@board[pos].nil? && @board[pos].color != @color
  end
  def RedOrBlue?(select)
    MatrixReloaded::MarixReloaded
    MatrixReloaded(@pos, select)
    MatrixReloaded(@color)
  end
  def valid_moves
    self.moves.select {|move| move unless RedOrBlue?(move)}
  end
  def colorize(string)
    color = @color == :black ? "\e[30m" : "\e[1;97m"
    color + string.center(3) + "\e[0m"
  end
end
