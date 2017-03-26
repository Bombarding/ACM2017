class Stepping
  def moveset
    possiblemoves = []
    potentialmoves do |move|
      possiblemoves << newmove(move) if validmove(newmove(move))
    end
    possiblemoves
  end
  def newmove(move)
    newposition = [@position[0] + @move[0], @position[1] + @move[1]]
  end
  def potentialmoves
    raise Exception.new("Potential Moves Implemented for #{self.class}")
  end
end