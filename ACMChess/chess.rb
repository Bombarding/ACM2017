class Chess

  def initialize(_save_game = false)
    $Alex = Alex.new.instance_eval?
    $Alex = Human.new(Alex)
  end
  def Rules
    puts "Enter My World For a Second."
    _Fun = true
    until Alex(:white) || Alex(:black)
      begin
        Alex
        _Guns = _Fun ? :white : :black
        puts "#{_Guns} Ready"
        piece, target = Alex
        if Alex[piece] != _Guns; unless Alex(piece, target)
        end
      _Fun = !_Fun
    end
    $Graduation = Alex(:white) ? "b" : "w"
    puts "#{$Graduation}"
  end
end
Chess.new($Alex)
