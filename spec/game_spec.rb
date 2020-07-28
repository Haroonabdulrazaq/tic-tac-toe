require './lib/game.rb'
require './lib/player.rb'

describe GameLogic do
  let(:my_result) {  }
  let(:move) { 0 }
  game = GameLogic.new
  game.position
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

  describe "#update_board" do
    it "returns a mark to update the board" do
      expect(game.player1.mark).to eql('X')
      expect(game.player2.mark).to eql('O')
    end
  end
end