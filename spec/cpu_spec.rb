require "./lib/cpu"
require "./lib/game_board"

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
      
      expect(cpu.board).to be_a(GameBoard)
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
      
      cpu.choose_column("D")
      
      expect(cpu.is_full?).to eq(false)
      
      cpu.choose_column("D")
      cpu.choose_column("B")
      cpu.choose_column("C")
      cpu.choose_column("E")
      
      expect(cpu.is_full?).to eq(false)
    end
    
    it "returns true when the board is full" do
      game_board = GameBoard.new
      game_board.add_spaces
      
      cpu = CPU.new("O", game_board)
      
      expect(cpu.is_full?).to eq(false)
      
      6.times do
        cpu.choose_column("A")
      end
      6.times do
        cpu.choose_column("B")
      end
      6.times do
        cpu.choose_column("C")
      end
      6.times do
        cpu.choose_column("D")
      end
      6.times do
        cpu.choose_column("E")
      end
      6.times do
        cpu.choose_column("F")
      end
      6.times do
        cpu.choose_column("G")
      end
      
      expect(cpu.is_full?).to eq(true)
    end
  end
  
  describe "#win?" do
    it "returns false by default" do
      game_board = GameBoard.new
      game_board.add_spaces
      
      cpu = CPU.new("O", game_board)
      
      cpu.choose_column("D")
      cpu.choose_column("B")
      cpu.choose_column("C")
      cpu.choose_column("E")
      
      expect(cpu.win?).to eq(false)
    end
    
    it "returns true for horizontal win" do
      game_board = GameBoard.new
      game_board.add_spaces
      
      cpu = CPU.new("O", game_board)
      
      cpu.choose_column("A")
      cpu.choose_column("B")
      cpu.choose_column("C")
      cpu.choose_column("D")
      
      expect(cpu.win?).to eq(true)
    end
    
    it "returns true for vertical win" do
      game_board = GameBoard.new
      game_board.add_spaces
      
      cpu = CPU.new("O", game_board)
      
      cpu.choose_column("D")
      cpu.choose_column("D")
      cpu.choose_column("D")
      cpu.choose_column("D")
      
      expect(cpu.win?).to eq(true)
    end
    
    it "returns true for diagonal win" do
      game_board = GameBoard.new
      game_board.add_spaces
      
      player = Player.new("X", game_board)
      cpu = CPU.new("O", game_board)
      
      cpu.choose_column("C")
      cpu.choose_column("D")
      cpu.choose_column("D")
      cpu.choose_column("E")
      cpu.choose_column("E")
      cpu.choose_column("E")
      player.choose_column("F")
      cpu.choose_column("F")
      cpu.choose_column("F")
      cpu.choose_column("F")

      expect(cpu.win?).to eq(true)
    end
  end
end