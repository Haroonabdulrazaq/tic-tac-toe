require_relative 'player'
class Game_logic
    def initialize
        @position =[1,2,3,4,5,6,7,8,9]
        @count =0
        @player
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
                @count +=1 
            else
                @player = @player2
                @count = 0
            end  
    end

    # def update_board(move)

    # end
end
 
game = Game_logic.new
game.board