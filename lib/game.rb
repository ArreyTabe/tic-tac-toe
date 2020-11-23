# frozen_string_literal: true

# The class for the game
class Game
  def initialize
    @play = [[' ', ' ', ' '], [' ', ' ', ' '], [' ', ' ', ' ']]
    @gameover = false
    @first_d = nil
    @second_d = nil
    @move_num = 1
  end

  def fetch_gameover
    @gameover
  end

  def fetch_move_num
    @move_num
  end

  def get_play(first_d, second_d)
    @play[first_d][second_d]
  end

  def update_first_d=(new_d)
    @first_d = new_d
  end

  def update_second_d=(new_d)
    @second_d = new_d
  end

  def check_valid_input(input, player)
    if input.length == 2
      update_d(input, player)
    else
      puts 'Wrong value entered! Please try again!'
      puts
    end
  end

  def update_d(input, player)
    moves_first_d = { 'a' => 0, 'b' => 1, 'c' => 2 }
    moves_second_d = { '1' => 0, '2' => 1, '3' => 2 }

    @first_d = moves_first_d[input]
    @second_d = moves_second_d[input]

    check_valid_move(player)
  end

  def check_valid_move(player)
    if @play[@first_d][@second_d] != 'x' && @play[@first_d][@second_d] != 'o'
      play_move(player)
    else
      puts 'This square is already filled! Please try again!'
      puts
    end
  end

  def play_move(player)
    @play[@first_d][@second_d] = player.fetch_symbol
    @move_num += 1
    winning_possibilities = [[player.fetch_symbol, @play[0][0], @play[0][1], @play[0][2]].uniq.length == 1,
                             [player.fetch_symbol, @play[1][0], @play[1][1], @play[1][2]].uniq.length == 1,
                             [player.fetch_symbol, @play[2][0], @play[2][1], @play[2][2]].uniq.length == 1,
                             [player.fetch_symbol, @play[0][0], @play[1][0], @play[2][0]].uniq.length == 1,
                             [player.fetch_symbol, @play[0][1], @play[1][1], @play[2][1]].uniq.length == 1,
                             [player.fetch_symbol, @play[0][2], @play[1][2], @play[2][2]].uniq.length == 1,
                             [player.fetch_symbol, @play[0][0], @play[1][1], @play[2][2]].uniq.length == 1,
                             [player.fetch_symbol, @play[0][2], @play[1][1], @play[2][0]].uniq.length == 1]
    game_won(player) if winning_possibilities.any?
  end

  def game_won(player)
    game_over
    puts "#{player.fetch_name} has won the game!"
  end

  def game_over
    @gameover = true
    puts 'Game Over!'
  end
end
