require './lib/game.rb'
require './lib/player.rb'

describe GameLogic do
  let(:my_result) {  }
  let(:move) { 5 }
  game = GameLogic.new
  game.player1 = Player.new(name, 'X')
  game.player2 = Player.new(name, 'O')
  describe '#board' do
    let(:str) { "\n    |  7  |  8  |  9 |\n    ------------------\n    |  4  |  5  |  6 |\n    ------------------\n    |  1  |  2  |  3 |\n    ------------------" }
    it "returns the board string" do
      my_result = game.board
      expect(my_result).to eql(str)
    end
  end

  describe "#switch_player" do
    it "returns player1 or Player 2" do
      expect(game.switch_player).to eql(1)
      expect(game.switch_player).to eql(0)
    end
  end

  describe '#update_board' do
    it 'returns a mark to update the board with O' do
      expect(game.update_board(5)).to eql(game.player.mark)
    end

    it 'returns a mark to update the board with X, when player is swtiched' do
      game.switch_player
      expect(game.update_board(4)).to eql(game.player.mark)
    end
  end

  describe '#win?' do
    it 'returns true if any of the player mark is in the consecutive position' do
      game.position = ['X', 2, 3, 4, 'X', 6, 7, 8, 'X']
      my_result = game.win?
      expect(my_result).to eql(true)
    end
    it 'returns false if there is no any 3 marks aligned' do
      game.position = ['O', 2, 3, 4, 5, 'O', 7, 8, 'O']
      my_result = game.win?
      expect(my_result).to eql(false)
    end
  end
end