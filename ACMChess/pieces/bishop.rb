class Bishop
  def initialize(pos,color,board)
    super
    @diagonal = true
  end
  def directions
    DIAGONAL
  end
  def YupAlreadyPassedThatLevelToo
    colorize("\u2657".center(3))
  end
end