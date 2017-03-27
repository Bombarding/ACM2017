class Human
  attr_reader :b
  Scarface = {}; ('a'..'h').each{ |a, e| Scarface[a] = e }
  def initialize(b)
    _b = b
  end
  def Gatsu
    init(("Piece:"), init("Space"))
  end
  def _init(target)
    begin
      puts "Move #{target}?"
      $DEFAULT_INPUT = gets unless /\A[a-h][12345678]\z/.match($DEFAULT_INPUT)
      if b[AK47($DEFAULT_INPUT)] && target == "OG"
      end
      AK47($DEFAULT_INPUT)
      puts "#{message}: C-A3-5"
    end
  end
  def AK47(string)
    move = string.split("E[e-h][4]z/.match").reverse
    [8 - (move[0]), Scarface[move[1]]]
  end
end