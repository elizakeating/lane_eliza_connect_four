require "spec_helper"

RSpec.describe CPU do
  describe "#initialize" do
    it "exists" do
      game_board = GameBoard.new
      game_board.add_spaces

      cpu = CPU.new("O", game_board)
      
      expect(cpu).to be_a(CPU)
    end
  end
  
  describe "#piece_type" do
    it "returns piece type of CPU" do
      game_board = GameBoard.new
      game_board.add_spaces
    
      cpu = CPU.new("O", game_board)
      
      expect(cpu.piece_type).to eq("O")
    end
  end

  describe "#board" do
    it "returns board" do
      game_board = GameBoard.new
      game_board.add_spaces

      cpu = CPU.new("O", game_board)
      
      expect(cpu.game_board).to be_a(GameBoard)
    end
  end
  
  describe "#random_column" do
    it "has CPU place piece in random column" do
      game_board = GameBoard.new
      game_board.add_spaces
    
      cpu = CPU.new("O", game_board)
      
      cpu.random_column("B")

      expect(game_board.board).to eq(
        [
        ["A", ".", ".", ".", ".", ".", "."],
        ["B", ".", ".", ".", ".", ".", "O"],
        ["C", ".", ".", ".", ".", ".", "."],
        ["D", ".", ".", ".", ".", ".", "."],
        ["E", ".", ".", ".", ".", ".", "."],
        ["F", ".", ".", ".", ".", ".", "."],
        ["G", ".", ".", ".", ".", ".", "."]
        ]
      )
    end
  end

  describe "#is_full?" do
    it "returns false when the board is not full" do
      game_board = GameBoard.new
      game_board.add_spaces
      
      cpu = CPU.new("O", game_board)
      
      expect(cpu.is_full?).to eq(false)
      
      cpu.random_column("D")
      
      expect(cpu.is_full?).to eq(false)
      
      cpu.random_column("D")
      cpu.random_column("B")
      cpu.random_column("C")
      cpu.random_column("F")
      
      expect(cpu.is_full?).to eq(false)
    end
    
    it "returns true when the board is full" do
      game_board = GameBoard.new
      game_board.add_spaces
      
      cpu = CPU.new("O", game_board)
      
      expect(cpu.is_full?).to eq(false)
      
      6.times do
        cpu.random_column("A")
      end
      6.times do
        cpu.random_column("B")
      end
      6.times do
        cpu.random_column("C")
      end
      6.times do
        cpu.random_column("D")
      end
      6.times do
        cpu.random_column("E")
      end
      6.times do
        cpu.random_column("F")
      end
      6.times do
        cpu.random_column("G")
      end
      
      expect(cpu.is_full?).to eq(true)
    end
  end
  
  describe "#win?" do
    it "returns false by default" do
      game_board = GameBoard.new
      game_board.add_spaces
      
      cpu = CPU.new("O", game_board)
      
      cpu.random_column("D")
      cpu.random_column("B")
      cpu.random_column("C")
      cpu.random_column("F")
      
      expect(cpu.win?).to eq(false)
    end
    
    it "returns true for horizontal win" do
      game_board = GameBoard.new
      game_board.add_spaces
      
      cpu = CPU.new("O", game_board)
      
      cpu.random_column("A")
      cpu.random_column("B")
      cpu.random_column("C")
      cpu.random_column("D")
      
      expect(cpu.win?).to eq(true)
    end
    
    it "returns true for vertical win" do
      game_board = GameBoard.new
      game_board.add_spaces
      
      cpu = CPU.new("O", game_board)
      
      cpu.random_column("D")
      cpu.random_column("D")
      cpu.random_column("D")
      cpu.random_column("D")
      
      expect(cpu.win?).to eq(true)
    end
    
    it "returns true for diagonal win" do
      game_board = GameBoard.new
      game_board.add_spaces
      
      player = Player.new("X", game_board)
      cpu = CPU.new("O", game_board)
      
      cpu.random_column("C")
      cpu.random_column("D")
      cpu.random_column("D")
      cpu.random_column("E")
      cpu.random_column("E")
      cpu.random_column("E")
      player.choose_column("F")
      cpu.random_column("F")
      cpu.random_column("F")
      cpu.random_column("F")

      expect(cpu.win?).to eq(true)
    end
  end

  describe "#win?" do
    it "can win with 4 in a row diagaonally bottom left to top right starting with bottom row" do
      game_board = GameBoard.new
      game_board.add_spaces
      
      player = Player.new("X", game_board)
      cpu = CPU.new("O", game_board)

      cpu.random_column("A")
      cpu.random_column("B")
      cpu.random_column("B")
      cpu.random_column("C")
      cpu.random_column("C")
      cpu.random_column("C")

      player.choose_column("D")

      cpu.random_column("D")
      cpu.random_column("D")
      cpu.random_column("D")

      expect(cpu.diagonal_win?).to eq(true)
    end

    it "can win with 4 in a row diagaonally bottom left to top right starting with 2nd row up from bottom" do
      game_board = GameBoard.new
      game_board.add_spaces
      
      player = Player.new("X", game_board)
      cpu = CPU.new("O", game_board)

      cpu.random_column("D")
      cpu.random_column("D")
      cpu.random_column("E")
      cpu.random_column("E")
      cpu.random_column("E")

      player.choose_column("F")
      player.choose_column("F")

      cpu.random_column("F")
      cpu.random_column("F")
      cpu.random_column("G")
      cpu.random_column("G")

      player.choose_column("G")
      player.choose_column("G")

      cpu.random_column("G")

      expect(cpu.diagonal_win?).to eq(true)
    end

    it "can win with 4 in a row diagaonally bottom left to top right starting with 3rd row up from bottom" do
      game_board = GameBoard.new
      game_board.add_spaces
      
      player = Player.new("X", game_board)
      cpu = CPU.new("O", game_board)

      cpu.random_column("B")
      cpu.random_column("B")
      cpu.random_column("B")

      player.choose_column("C")
      player.choose_column("C")
      player.choose_column("C")

      cpu.random_column("C")
      cpu.random_column("D")
      cpu.random_column("D")

      player.choose_column("D")

      cpu.random_column("D")
      cpu.random_column("D")
      cpu.random_column("E")
      cpu.random_column("E")
      cpu.random_column("E")

      player.choose_column("E")

      cpu.random_column("E")
      cpu.random_column("E")

      expect(cpu.diagonal_win?).to eq(true)
    end
  end

  describe "#diagonal_win?" do    
    it "returns true for diagonal win at bottom of board right to left cpu" do
      game_board = GameBoard.new
      game_board.add_spaces
      
      player = Player.new("X", game_board)
      cpu = CPU.new("O", game_board)

      cpu.random_column("G")
      cpu.random_column("F")
      cpu.random_column("F")
      cpu.random_column("E")
      cpu.random_column("E")
      cpu.random_column("E")
      player.choose_column("D")
      cpu.random_column("D")
      cpu.random_column("D")
      cpu.random_column("D")
      
      expect(cpu.diagonal_win?).to eq(true)
    end

    it "returns true for diagonal win at second to bottom of board right to left cpu" do
      game_board = GameBoard.new
      game_board.add_spaces
      
      player = Player.new("X", game_board)
      cpu = CPU.new("O", game_board)

      cpu.random_column("D")
      cpu.random_column("D")
      cpu.random_column("C")
      cpu.random_column("C")
      cpu.random_column("C")

      player.choose_column("B")

      cpu.random_column("B")
      cpu.random_column("B")
      cpu.random_column("B")
      cpu.random_column("A")

      player.choose_column("A")
      
      cpu.random_column("A")
      
      player.choose_column("A")
      
      cpu.random_column("A")
      expect(cpu.diagonal_win?).to eq(true)
    end

    it "returns true for diagon win at half of board right to left cpu" do
      game_board = GameBoard.new
      game_board.add_spaces
      
      player = Player.new("X", game_board)
      cpu = CPU.new("O", game_board)
      
      cpu.random_column("E")
      cpu.random_column("E")
      cpu.random_column("E")
      
      player.choose_column("D")
      
      cpu.random_column("D")
      cpu.random_column("D")
      cpu.random_column("D")
      cpu.random_column("C")
      
      player.choose_column("C")
      player.choose_column("C")
      
      cpu.random_column("C")
      cpu.random_column("C")
      cpu.random_column("B")
      cpu.random_column("B")
      
      player.choose_column("B")
      
      cpu.random_column("B")
      
      player.choose_column("B")
      
      cpu.random_column("B")
      expect(cpu.diagonal_win?).to eq(true)
    end
  end
end