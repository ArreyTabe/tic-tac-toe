# The class for the game
class Game
  def initialize
    @play = [[' ', ' ', ' '], [' ', ' ', ' '], [' ', ' ', ' ']]
    @gameover = false
    @first_d = nil
    @second_d = nil
    @current_player = nil
    @move_num = 1
  end

  attr_reader :move_num, :play

  attr_writer :first_d, :second_d

  attr_accessor :gameover, :current_player

  def input_valid?(input)
    input.length == 2
  end

  def update_d(input)
    table_rows = %w[a b c]
    table_columns = %w[1 2 3]

    table_rows.each_with_index { |item, i| @first_d = i if input.include?(item) }
    table_columns.each_with_index { |item, i| @second_d = i if input.include?(item) }
  end

  def move_valid?
    !@first_d.nil? && !@second_d.nil?
  end

  def square_filled?
    @play[@first_d][@second_d] != 'x' && @play[@first_d][@second_d] != 'o'
  end

  def winning_possibilities
    [[@play[0][0], @play[0][1], @play[0][2]],
     [@play[1][0], @play[1][1], @play[1][2]],
     [@play[2][0], @play[2][1], @play[2][2]],
     [@play[0][0], @play[1][0], @play[2][0]],
     [@play[0][1], @play[1][1], @play[2][1]],
     [@play[0][2], @play[1][2], @play[2][2]],
     [@play[0][0], @play[1][1], @play[2][2]],
     [@play[0][2], @play[1][1], @play[2][0]]]
  end

  def play_move
    @play[@first_d][@second_d] = @current_player.symbol
    @move_num += 1
  end

  def game_won?
    winning_possibilities.any? do |item|
      item.push(@current_player.symbol)
      item.uniq.length == 1
    end
  end
end
