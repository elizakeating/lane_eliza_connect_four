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

      columns_hash = {"A" => 0, "B" => 1, "C" => 2, "D" => 3, "E" => 4, "F" => 5, "G" => 6}

      full_message = "That column is full. Please enter a-g to pick another column."

      choosing = true

      until choosing == false
       counter = 0
       game_board.board.each do |column|
        column_full = !column.include?(".")
        if counter == columns_hash[column_choice]
         if column_full
          full_message
          column_choice = gets.chomp.upcase
          if game_board.board[columns_hash[column_choice]].include?(".")
           choosing = false
           break
          end
         end
         counter += 1
        else
         counter += 1
        end
       end
       choosing = false
      end

      player.choose_column(column_choice)

      game_board.print_board
      puts "============="

      if player.win?
        game_end("player")
        break
      end

      cpu_column = column_array.sample

      choosing = true

      until choosing == false
        counter = 0
        game_board.board.each do |column|
          column_full = !column.include?(".")
          if counter == columns_hash[column_choice]
            if column_full
              cpu_column = column_array.sample
              if game_board.board[columns_hash[column_choice]].include?(".")
                choosing = false
                break
              end
            end
            counter += 1
          else
            counter += 1
          end
        end
        choosing = false
      end

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
      @game_board = GameBoard.new
      @player = Player.new("X", @game_board)
      @cpu = CPU.new("O", @game_board)
      welcome
      win_message
    elsif end_condition == "cpu"
      loss_message = "You're bad at this. You let a computer beat you when it wasn't even trying."
      puts loss_message
      @game_board = GameBoard.new
      @player = Player.new("X", @game_board)
      @cpu = CPU.new("O", @game_board)
      welcome
      loss_message
    elsif end_condition == "full"
      full_message = "The board is full, so no one wins. How did this happen? Do you understand the rules?"
      puts full_message
      @game_board = GameBoard.new
      @player = Player.new("X", @game_board)
      @cpu = CPU.new("O", @game_board)
      welcome
      full_message
    end
  end
end