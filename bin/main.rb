#!/usr/bin/env ruby
class TicTacToe
    def initialize
        @board = Board.new
        puts "Enter First Player name: " 
        @name1 = gets.chomp
        puts "Enter Second Player name: " 
        @name2 = gets.chomp
        @player1 = "X"
        @player2 = "O"
        puts "#{@name1} is #{@player1}"
        puts "#{@name2} is #{@player2}"
    end
    def play
        puts "Make a move?"
        first_move = gets.chomp.strip
        @board = Board.new
   end
    def winner
        puts "#{@name}, Congratulations, you have won!"
    end

    def draw
        puts "It is a tie"
    end
    
    def player_again
        puts "Do you want continue?yes or no"
        response = get.chomp.strip
    end
end


class Board  
    def initialize 
    @position = [1,2,3,4,5,6,7,8,9]
     puts   "|  #{@position[0]}  |  #{@position[1]}  |  #{@position[2]} |"
     puts "------------------"
     puts   "|  #{@position[3]}  |  #{@position[4]}  |  #{@position[5]} |"
     puts "------------------"
     puts   "|  #{@position[6]}  |  #{@position[7]}  |  #{@position[8]} |"
     puts "------------------"
    end
end
 
 
 
