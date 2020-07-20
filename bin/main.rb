#!/usr/bin/env ruby
require_relative '../lib/game'
game = Game_logic.new
game.board
game.switch_player
puts 'Enter First Player name: '
@name1 = gets.chomp
game.player1[:name] = @name1
puts 'Enter Second Player name: '
@name2 = gets.chomp
game.player1[:name] = @name2
game.player1[:mark] = 'X'
game.player2[:mark] = 'O'
puts "#{game.player1[:name]} is #{game.player1[:mark]}"
puts "#{game.player2[:name]} is #{game.player2[:mark]}"

puts "#{game.player[:name]} make a move?"
move = gets.chomp.strip
   
     loop do
          break win?
          break draw?
      game.switch_player
     end

      


