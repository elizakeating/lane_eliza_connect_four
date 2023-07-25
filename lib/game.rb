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

  def turns
    game_board.add_spaces
    game_board.print_board
    
    21.times do
      puts "Please enter a-g to choose where you will place your piece."
      column_choice = gets.chomp.upcase

      column_array = ["A", "B", "C", "D", "E", "F", "G"]

      until column_array.include?(column_choice)
        puts "That is an invalid answer, please enter a-g to choose where you will place your piece."
        column_choice = gets.chomp.upcase
      end

      player.choose_column(column_choice)

      game_board.print_board
      puts "============="

        if player.win?
          game_end("player")
          break
        end
      cpu_column = column_array.sample

      cpu.random_column(cpu_column)

      game_board.print_board
      puts "============="
      puts "============="

      if cpu.win?
        game_end("cpu")
        break
      end

      if cpu.is_full? 
        game_end("full")
        break
      end
    end
  end
end