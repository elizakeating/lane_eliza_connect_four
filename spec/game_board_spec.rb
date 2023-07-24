require "spec_helper"

RSpec.describe GameBoard do
  describe "#initializes" do
    it "can initialize" do
      game_board = GameBoard.new

      expect(game_board).to be_a(GameBoard)
    end
  end

  describe "#readable attributes" do
    it "has readable attributes" do
      game_board = GameBoard.new

      expect(game_board.board).to eq([
        ["A"],
        ["B"],
        ["C"],
        ["D"],
        ["E"],
        ["F"],
        ["G"]
      ])
      expect(game_board.space).to eq(".")

      expect(game_board.column_1).to eq(["A"])
      expect(game_board.column_2).to eq(["B"])
      expect(game_board.column_3).to eq(["C"])
      expect(game_board.column_4).to eq(["D"])
      expect(game_board.column_5).to eq(["E"])
      expect(game_board.column_6).to eq(["F"])
      expect(game_board.column_7).to eq(["G"])
    end
  end

  describe "#add_spaces" do
    it "can add spaces to the baord" do
      game_board = GameBoard.new
      game_board.add_spaces

      expect(game_board.board).to eq([
        ["A", ".", ".", ".", ".", ".", "."],
        ["B", ".", ".", ".", ".", ".", "."],
        ["C", ".", ".", ".", ".", ".", "."],
        ["D", ".", ".", ".", ".", ".", "."],
        ["E", ".", ".", ".", ".", ".", "."],
        ["F", ".", ".", ".", ".", ".", "."],
        ["G", ".", ".", ".", ".", ".", "."]
      ])
    end
  end

  describe "#print_board" do
    it "can print the board with dynamic additions" do
      game_board = GameBoard.new
      game_board.add_spaces
      
      expect(game_board.print_board).to eq([
        ["A", ".", ".", ".", ".", ".", "."],
        ["B", ".", ".", ".", ".", ".", "."],
        ["C", ".", ".", ".", ".", ".", "."],
        ["D", ".", ".", ".", ".", ".", "."],
        ["E", ".", ".", ".", ".", ".", "."],
        ["F", ".", ".", ".", ".", ".", "."],
        ["G", ".", ".", ".", ".", ".", "."]
      ])
      
      player = Player.new("X", game_board)
      cpu = CPU.new("O", game_board)

      player.choose_column("A")
      cpu.random_column("C")

      expect(game_board.print_board).to eq([
        ["A", ".", ".", ".", ".", ".", "X"],
        ["B", ".", ".", ".", ".", ".", "."],
        ["C", ".", ".", ".", ".", ".", "O"],
        ["D", ".", ".", ".", ".", ".", "."],
        ["E", ".", ".", ".", ".", ".", "."],
        ["F", ".", ".", ".", ".", ".", "."],
        ["G", ".", ".", ".", ".", ".", "."]
      ])
    end
  end
end