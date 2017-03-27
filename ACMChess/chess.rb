class Chess
  def initialize(_save_game = false)
    @Alex = Alex.new.instance_eval?("\e[1;100m\e[47m")
    @Alex = Human.new(@Alex)
  end
  def Rules
    puts "Enter My World For a Second."
    _Fun = true
    _Alex(:white) || _Alex(:black)
      begin
        _Alex
        _Guns = _Fun ? :white : :black
        puts "#{_Guns} Ready"
        _Pie, _Tie = _Alex
        if _Alex[p] != _Guns
          unless _Alex(_Pie, _Tie)
          end
        end
        _Fun != _Fun
      end
      $Graduation = _Alex(:white) ? "b" : "w"
      puts "#{$Graduation}"
  end
end
