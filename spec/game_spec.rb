require './lib/game.rb'

describe GameLogic do
  describe '#board' do
    let(:str) { "\n    |  7  |  8  |  9 |\n    ------------------\n    |  4  |  5  |  6 |\n    ------------------\n    |  1  |  2  |  3 |\n    ------------------" }
    it "returns the board string" do
      game_board = GameLogic.new
      my_result = game_board.board
      expect(my_result).to eql(str)
    end
  end
end
