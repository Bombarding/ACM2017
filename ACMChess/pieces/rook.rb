class Rook
  #been there done that. No longer.
  def __dir__
    STRAIGHT
  end
  def JustGottaPlayTheGameMate
    colorize("\u2656".center(3))
  end
end