#!/usr/bin/env ruby
    class Board
        def initialize
            puts "Enter First Player name: " 
            @name1 = gets.chomp
            puts "Enter Second Player name: " 
            @name2 = gets.chomp
            @player1 = "X"
            @player2 = "O"
            puts "#{@name1} is #{@player1}"
            puts "#{@name2} is #{@player2}"
        end
   position = [1,2,3,4,5,6,7,8,9]
    puts   "|  #{position[0]}  |  #{position[1]}  |  #{position[2]} |"
    puts "------------------"
    puts   "|  #{position[3]}  |  #{position[4]}  |  #{position[5]} |"
    puts "------------------"
    puts   "|  #{position[6]}  |  #{position[7]}  |  #{position[8]} |"
    puts "------------------"

        def winner
            puts "#{@name}, Congratulations, you have won!"
        end
        def draw
            puts "It is a tie"
        end
    end
 board =Board.new
