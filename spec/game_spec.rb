require './lib/game.rb'
require './lib/player.rb'

describe GameLogic do
  let(:my_result) {}
  let(:move) { 5 }
  game = GameLogic.new
  game.player1 = Player.new(name, 'X')
  game.player2 = Player.new(name, 'O')
  describe '#board' do
    let(:str) do
      "\n    |  7  |  8  |  9 |\n    -------\
-----------\n    |  4  |  5  |  6 |\n    --------\
----------\n    |  1  |  2  |  3 |\n    ------------------"
    end
    it 'returns the board string' do
      my_result = game.board
      expect(my_result).to eql(str)
    end
  end

  describe '#switch_player' do
    it 'returns player1 or Player 2' do
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
    winning_moves = [[0, 1, 2], [0, 4, 8], [0, 3, 6], [1, 4, 7], [2, 4, 0], [2, 5, 8], [6, 7, 8], [3, 4, 5]]
    winning_moves.each do |i|
      it 'returns true if player occupies any of the winning move' do
        game.position[i[0]] = game.player.mark
        game.position[i[1]] = game.player.mark
        game.position[i[2]] = game.player.mark
        expect(game.win?).to eql(true)
      end
    end
    it 'returns false if player occupies all winning move' do
      expect(!game.win?).to eql(false)
    end
  end
end
