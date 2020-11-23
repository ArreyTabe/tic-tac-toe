# frozen_string_literal: true

# The class for the player
class Player
  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

  def fetch_name
    @name
  end

  def fetch_symbol
    @symbol
  end
end
