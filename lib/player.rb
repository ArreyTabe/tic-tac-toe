# The class for the player
class Player
  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

  attr_reader :name, :symbol
end
