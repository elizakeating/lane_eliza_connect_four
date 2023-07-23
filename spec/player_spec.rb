require "./lib/player"
require "./lib/game_piece"
require "./lib/game_board"

RSpec.describe Player do
  describe "#initialize" do
    it "exists" do
      player = Player.new("X")
      
      expect(player).to be_a(Player)
    end
    
    describe "#piece_type" do
      it "returns piece type of player" do
        player = Player.new("X")

        expect(player.piece_type).to eq("X")
      end
    end
  end
  
  describe "#choose_column" do
    it "allows player to choose a column to place their piece" do
      game_board = GameBoard.new
      game_board.add_spaces
      
      player = Player.new("X")

      player.choose_column("D")

      expect(game_board.board).to eq(
        [
        ["A", ".", ".", ".", ".", ".", "."],
        ["B", ".", ".", ".", ".", ".", "."],
        ["C", ".", ".", ".", ".", ".", "."],
        ["D", ".", ".", ".", ".", ".", "X"],
        ["E", ".", ".", ".", ".", ".", "."],
        ["F", ".", ".", ".", ".", ".", "."],
        ["G", ".", ".", ".", ".", ".", "."]
        ]
      )
    end
  end
end