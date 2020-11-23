# frozen_string_literal: true

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

  def fetch_gameover
    @gameover
  end

  def fetch_move_num
    @move_num
  end

  def update_first_d=(new_d)
    @first_d = new_d
  end

  def update_second_d=(new_d)
    @second_d = new_d
  end

  def print_game
    puts '   1 2 3 '
    puts '  -------'
    puts "a |#{@play[0][0]}|#{@play[0][1]}|#{@play[0][2]}|"
    puts '  -------'
    puts "b |#{@play[1][0]}|#{@play[1][1]}|#{@play[1][2]}|"
    puts '  -------'
    puts "c |#{@play[2][0]}|#{@play[2][1]}|#{@play[2][2]}|"
    puts '  -------'
    puts
  end

  def check_valid_input(input, player)
    if input.length == 2
      @current_player = player
      update_d(input)
    else
      puts 'Wrong value entered! Please try again!'
      puts
    end
  end

  def update_d(input)
    moves_first_d = %w[a b c]
    moves_second_d = %w[1 2 3]

    moves_first_d.each_with_index { |item, i| @first_d = i if input.include?(item) }
    moves_second_d.each_with_index { |item, i| @second_d = i if input.include?(item) }

    check_valid_move
  end

  def check_valid_move
    if @play[@first_d][@second_d] != 'x' && @play[@first_d][@second_d] != 'o'
      play_move
    else
      puts 'This square is already filled! Please try again!'
      puts
    end
  end

  def play_move
    @play[@first_d][@second_d] = @current_player.fetch_symbol
    @move_num += 1
    winning_possibilities = [[@current_player.fetch_symbol, @play[0][0], @play[0][1], @play[0][2]].uniq.length == 1,
                             [@current_player.fetch_symbol, @play[1][0], @play[1][1], @play[1][2]].uniq.length == 1,
                             [@current_player.fetch_symbol, @play[2][0], @play[2][1], @play[2][2]].uniq.length == 1,
                             [@current_player.fetch_symbol, @play[0][0], @play[1][0], @play[2][0]].uniq.length == 1,
                             [@current_player.fetch_symbol, @play[0][1], @play[1][1], @play[2][1]].uniq.length == 1,
                             [@current_player.fetch_symbol, @play[0][2], @play[1][2], @play[2][2]].uniq.length == 1,
                             [@current_player.fetch_symbol, @play[0][0], @play[1][1], @play[2][2]].uniq.length == 1,
                             [@current_player.fetch_symbol, @play[0][2], @play[1][1], @play[2][0]].uniq.length == 1]
    game_won if winning_possibilities.any?
  end

  def game_won
    game_over
    print_game
    puts "#{@current_player.fetch_name} has won the game!"
  end

  def game_over
    @gameover = true
    puts 'Game Over!'
  end
end
