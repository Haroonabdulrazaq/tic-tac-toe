require './lib/game.rb'
require './lib/player.rb'

describe GameLogic do
  let(:my_result) {}
  let(:move) { 5 }
  game = GameLogic.new
  game.player1 = Player.new('player1', 'X')
  game.player2 = Player.new('player2', 'O')
  describe '#board' do
    let(:str) do
      "\n    |  7  |  8  |  9 |\n    -----------\
-------\n    |  4  |  5  |  6 |\n    -----------\
-------\n    |  1  |  2  |  3 |\n    ------------------"
    end
    it 'returns the board string' do
      my_result = game.board
      expect(my_result).to eql(str)
    end
  end

  describe '#switch_player' do
    it 'assigns @player variable player1 object' do
      game.switch_player
      expect(game.player.name).to eql('player1')
    end
    it 'changes @player variable player2 object' do
      game.switch_player
      expect(game.player.name).to eql('player2')
    end
    it 'changes back @player variable player1 object' do
      game.switch_player
      expect(game.player.name).to eql('player1')
    end
  end

  describe '#update_board' do
    it '@position[4] value changes to X' do
      game.update_board(5)
      expect(game.position[4]).to eql('X')
    end
    it '@position[3] value changes to X' do
      game.update_board(4)
      expect(game.position[3]).to eql('X')
    end
  end

  describe '#win?' do
    winning_moves = [[0, 1, 2, 5], [0, 4, 8], [0, 7, 3, 6], [1, 4, 7], [2, 4, 8, 3, 0]]
    non_winning_moves = [[0, 4, 2, 5], [0, 6, 2, 8], [0, 7, 4, 6], [1, 4, 6]]
    winning_moves.each do |i|
      it "returns true if player occupies #{i.map { |j| j + 1 }}" do
        game.position = [1, 2, 3, 4, 5, 6, 7, 8, 9] # reset the after each loop test
        i.each { |k| game.position[k] = game.player.mark }
        expect(game.win?).to eql(true)
      end
    end
    non_winning_moves.each do |i|
      it "returns false if player occupies #{i.map { |j| j + 1 }}" do
        game.position = [1, 2, 3, 4, 5, 6, 7, 8, 9] # reset the after each loop test
        i.each { |k| game.position[k] = game.player.mark }
        expect(game.win?).to eql(false)
      end
    end
  end
end
