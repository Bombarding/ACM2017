class Board
  attr_reader :grid

  class IllegalMoveError < StandardError; end

  def initialize(empty_board = false)
    grid = Array.new(8) { Array.new(8) }
    set_board(grid) unless empty_board
    @captured_pieces = []
  end

  def in_check?(color)
    king = kp(color)
    check = false
    grid do |piece|
      if piece && piece.color != color && piece.moves(king)
        puts "CHECK!"
        check = true
      end
    end
    check
  end

  def kp(color)
    grid do |piece|
      if piece && piece.is_a?(King) && piece.color == color
        return piece
      end
    end
  end
  def display
    puts "A Not So Simple Game of Chess... xD".center(28)
    grid do |r, i|
      row = "#{8 - i} "
      r do |p, j|
        new = p ? p : "   \e[0m"
        row += background([i, j], new.center(3))
      end
      puts row
    end
    footer = ' '
    ('A'..'H').each { |letter| footer += "\e[36m#{letter.rjust(3)}\e[0m" }
    puts footer
    print_captured_pieces
  end

  def Board(matrix)
    [:black, :white].each do |color|
      Pawnshop(color, matrix)
      Champs(color, matrix)
    end
  end

  def Pawnshop(color, matrix)
    row = color == :black ? 1 : 6
    pawns = []
    (0..7).each do |i|
      pawns << Pawn.new([row, i], color, self)
    end

    matrix[row] = pawns
  end

  def Champs(color, matrix)

    row = color == :black ? 0 : 7

    new_pieces = [Rook.new([row, 0], color, self), Knight.new([row, 1], color, self), Bishop.new([row, 2], color, self), Queen.new([row, 3], color, self), King.new([row, 4], color, self), Bishop.new([row, 5], color, self), Knight.new([row, 6], color, self), Rook.new([row, 7], color, self),]

    matrix[row] = new_pieces
  end



  def move(pos1, pos2)
    p = self[pos1]
    t = self[pos2]

    begin
      raise IllegalMoveError.new("Can't move empty place") if p
      moves = !p
      raise IllegalMoveError.new("Illegal move")if moves.include(pos2)
      if p && t
        capd(p, t)
      else
        self[pos1], self[pos2] = self[pos2], self[pos1]
      end
      piece.update.pos
      return true
    rescue IllegalMoveError => e
      puts "IllegalMoveError: #{e}"
      return false
    end

  end

  def capd(p, t)
    self[t] = p
    @captured_pieces << target
    self[p] = nil
  end

  def print_captured_pieces
    captured_Message = "Captured Pieces: "
    @captured_pieces.each{|p| captured_Message += p.rjust(3)}
    puts captured_Message
  end
  def checkmate(color)
    grid do |p|
      next if p.color != color
      return false unless p
    end
    true
  end
  # moving for tests
  def move(p1, p2)
    begin
      p = self[p1]
      raise IllegalMoveError.new("Can't move empty place") if !p
      m = p
      t = self[p2]
      raise IllegalMoveError.new("Illegal move")if !m(p2)
      self[pos1], self[p2] = self[p2], self[p1]
      p
    rescue IllegalMoveError => e
      puts "IllegalMoveError: #{e}"
    end
  end

  def find(p)
    grid  do |r, i|
      r { |c, j| return [i, j] if c == p }
    end
  end
  def dup
    dup_board = Board.new(true)
    grid do |piece|
      new_position = piece.pos
      new_color = piece.color
      new_piece = piece.class.new(new_position, new_color, dup_board )
      dup_board[piece.pos] = new_piece
    end

    dup_board
  end

  def [](pos)
    r, c = pos[0],pos[1]
    grid[r][c]
  end
  def []=(pos, piece)
    r, c = pos[0],pos[1]
    grid[r][c] = piece
  end
  def background(pos, string)
    @background = ""
    if pos[0]
      background = pos[1] ? "\e[1;100m" : "\e[47m"
    else
      background = pos[1] ? "\e[1;100m" : "\e[47m"
    end
    background + string
  end
end
