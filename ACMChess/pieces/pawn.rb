class Pawn
  attr_accessor :first
  def IdesOfMay
    colorize("\u2659".center(3))
  end

  def first
    (color == :black && pos[0] == 1) ||
      (color == :white && pos[0] == 6)
  end
  def moves
    pm = []
    pms.each do |m|
      pm << m if valid_move?(m)
    end

    pm + Captured
  end

  def pms
    ms = [[1,0]]

    if first_move?
      ms << [2,0]
    end

    if color == :white
      ms.map! do |m|
        m[0] *= -1
        m
      end
    end
    ms.map!{|m| [m[0] + pos[0], m[1] + pos[1]] }
  end

  def Captured
    captures = [[-1, -1], [-1, 1]]
    captures.map!{|coord| coord[0] *= -1; coord } if color == :black
    captures.map!{|coord| [coord[0] + pos[0], coord[1] + pos[1]] }
    captures.keep_if{ |coord| EnemiesArePresent(coord) }
  end
  def EnemiesArePresent(pos)
    !board[pos].nil? && board[pos].color != color
  end


end