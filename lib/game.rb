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
    until p_or_q == "p" || p_or_q == "q"
      puts "That is not a valid entry. Enter p to Play. Enter q to Quit."
      p_or_q = gets.chomp.downcase
    end
    if p_or_q == "p"
      puts "Choose your token. Enter x for X. Enter o for O."
      token = gets.chomp.downcase
      until token == "x" || token == "o"
        puts "That is not a valid entry. Enter x for X. Enter o for  O."
        token = gets.chomp.downcase
      end
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
  #   @game_board.board.each do |column|
  #     column.each do |space|
  #       if space == "." || space == "X" || space == "O"
  #         column.delete(space)
  #       end
  #     end
  #   end

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

  def game_end(end_condition)
    if end_condition == "player"
      win_message = "Congratulations! You won the game!"
      puts win_message
      reset
      win_message
    elsif end_condition == "cpu"
      loss_message = "You're bad at this. You let a computer beat you when it wasn't even trying."
      puts loss_message
      reset
      loss_message
    elsif end_condition == "full"
      full_message = "The board is full, so no one wins. How did this happen? Do you understand the rules?"
      puts full_message
      reset
      full_message
    end
  end

  def reset
    game_board.column_1.replace(["A"])
    game_board.column_2.replace(["B"])
    game_board.column_3.replace(["C"])
    game_board.column_4.replace(["D"])
    game_board.column_5.replace(["E"])
    game_board.column_6.replace(["F"])
    game_board.column_7.replace(["G"])
    # game_board.column_1 = ["A"]
    # game_board.column_2 = ["B"]
    # game_board.column_3 = ["C"]
    # game_board.column_4 = ["D"]
    # game_board.column_5 = ["E"]
    # game_board.column_6 = ["F"]
    # game_board.column_7 = ["G"]
    welcome
  end
end