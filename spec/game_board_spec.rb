require "./lib/game_board"

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

      expect(game_board.board).to eq([])
      expect(game_board.space).to eq(".")
      expect(game_board.column).to eq([])
    end
  end

  describe "#add_spaces" do
    it "can add spaces to the baord" do
      game_board = GameBoard.new
      game_board.add_speaces

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
end