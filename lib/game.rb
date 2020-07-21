# Game Logic for TicTacToe
class GameLogic
  attr_accessor :player1, :player2, :player
  def initialize
    @position = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @count = 0
    @player1 = ''
    @player2 = ''
    @player = ''
  end

  def board
    "
    |  #{@position[6]}  |  #{@position[7]}  |  #{@position[8]} |
    ------------------
    |  #{@position[3]}  |  #{@position[4]}  |  #{@position[5]} |
    ------------------
    |  #{@position[0]}  |  #{@position[1]}  |  #{@position[2]} |
    ------------------"
  end

  def switch_player
    if @count.even?
      @player = @player1
      @count += 1
    else
      @player = @player2
      @count = 0
    end
  end

  def update_board(move)
    @position[move - 1] = @player.mark
  end

  # rubocop:disable Metrics/PerceivedComplexity,Metrics/CyclomaticComplexity
  def win?
    if [@position[0], @position[1], @position[2]].all?(player.mark) ||
       [@position[0], @position[4], @position[8]].all?(player.mark) ||
       [@position[0], @position[3], @position[6]].all?(player.mark) ||
       [@position[1], @position[4], @position[7]].all?(player.mark) ||
       [@position[2], @position[4], @position[6]].all?(player.mark) ||
       [@position[2], @position[5], @position[8]].all?(player.mark) ||
       [@position[6], @position[7], @position[8]].all?(player.mark) ||
       [@position[3], @position[4], @position[5]].all?(player.mark)
      true
    else
      false
    end
  end
  # rubocop:enable Metrics/PerceivedComplexity,Metrics/CyclomaticComplexity
end
