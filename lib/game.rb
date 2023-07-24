class Game
  attr_reader :game_board,
              :player,
              :cpu

  def initialize
    @game_board = GameBoard.new
    @player = Player.new("X", @game_board)
    @cpu = CPU.new("O", @game_board)
  end
end