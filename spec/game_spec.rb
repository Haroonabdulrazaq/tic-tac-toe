require './lib/game.rb'

describe GameLogic do
  let(:my_result) {  }
  game = GameLogic.new
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
end
