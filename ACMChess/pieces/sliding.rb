class Sliding
  DIAGONAL = [[-1, -1], [-1, 1], [1,  1], [1, -1]]
  STRAIGHT = [[-1,  0], [1,  0], [0, -1], [0,  1]]
  #Initializing the Initial move conditions
  def moves
    possible_moves = []
    dir do |dir|
      possible_moves += MyDirections(pos, dir)
    end
    possible_moves
  end
  #Setting up the directions for the user
  def directions
    STRAIGHT + DIAGONAL
  end

  #Here are the results. Calculates the position, and moves pieces accordingly.
  def MyDirections(pos, dir)
    coordinates = []
    np    = pos.dup
    row   = np[0] + dir[0]
    col   = np[1] + dir[1]
    np    = [row, col]
    while valid?(np)
      #add if enemy and break out of loop
      coordinates << np
      if EnemiesArePresent(np)
        np = [-1, -1]
      else
        #Friends Are Present
        row = np[0] + dir[0]
        col = np[1] + dir[1]
        np = [row, col]
      end
    end

    coordinates
  end
end

