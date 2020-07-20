#!/usr/bin/env ruby
require_relative '../lib/game'
require_relative '../lib/player'

game = Game_logic.new
game.board
puts 'Enter First Player name: '
@name1 = gets.chomp.strip

player1 = Player.new(@name1, "X")
game.player1 = player1

puts 'Enter Second Player name: '
@name2 = gets.chomp.strip

player2 = Player.new(@name2, "O")
game.player2 = player2

puts "#{game.player1.name} is #{game.player1.mark}"
puts "#{game.player2.name} is #{game.player2.mark}"

   
     9.times do
          # break win?
          # break draw?
          game.switch_player
          puts "#{game.player.name} make a move?"
          move = gets.chomp.strip.to_i
          move = move
          game.update_board(move)
          puts game.board
     end

      


