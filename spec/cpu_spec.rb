require "./lib/cpu"
require "./lib/game_piece"
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
end