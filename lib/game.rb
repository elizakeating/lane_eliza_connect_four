class Game
  attr_reader :game_board,
              :player,
              :cpu

  def initialize
    @game_board = GameBoard.new
    @player = Player.new("X", @game_board)
    @cpu = CPU.new("O", @game_board)
  end

  def welcome
    welcome_message = "Welcome to Connect 4! Enter p to Play. Enter q to Quit."
    puts welcome_message
    p_or_q = gets.chomp.downcase
    if p_or_q == "p"
      puts "Choose your token. Enter x for X. Enter o for O."
      token = gets.chomp.downcase
      if token == "x"
        player.piece_type = "X"
        cpu.piece_type = "O"
      elsif token == "o"
        player.piece_type = "O"
        cpu.piece_type = "X"
      end
      turns
    elsif p_or_q == "q"
      exit
    end
    welcome_message
  end
end