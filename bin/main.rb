#!/usr/bin/env ruby

# Implementing TicTacToe Game Interface
class TicTacToe
  def initialize
    @board = Board.new
    puts 'Enter First Player name: '
    @name1 = gets.chomp
    puts 'Enter Second Player name: '
    @name2 = gets.chomp
    @player1 = 'X'
    @player2 = 'O'
    puts "#{@name1} is #{@player1}"
    puts "#{@name2} is #{@player2}"
  end


  def player_turn
    $count = 0
    9.times do 
      if $count%2 == 0
        player = @name1
        puts "#{player} Make a move? Choose between 1-9"
        move = gets.chomp.strip.to_i  
        @board.update_board(move)
     
      else 
        player = @name2 
        puts "#{player} Make a move? Choose between 1-9"
        move = gets.chomp.strip.to_i  
        @board.update_board(move)  
      end
      $count +=1
    end   
  end

  def winner
    puts "#{@name}, Congratulations, you have won!"
  end

  def draw
    puts 'It is a tie'
  end
 
end

# Display the Board
class Board
  def initialize
    @position = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end
  
  def draw_board
    puts "|  #{@position[0]}  |  #{@position[1]}  |  #{@position[2]} |"
    puts '------------------'
    puts "|  #{@position[3]}  |  #{@position[4]}  |  #{@position[5]} |"
    puts '------------------'
    puts "|  #{@position[6]}  |  #{@position[7]}  |  #{@position[8]} |"
    puts '------------------'
  end

  def update_board(move)
      if 1 <= move || 9 >= move 
        if $count%2 == 0
          @position[move-1] = "X"
        elsif $count%2 == 1
          @position[move-1] = "O"
        end
      else
        puts "Invalid move"
      end
      draw_board
  end
end

 play = TicTacToe.new
 play.player_turn
# display = Board.new
# display.player_turn


