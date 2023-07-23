require "./lib/game_piece"

RSpec.describe GamePiece do
  describe "#initialize" do
    it "exists" do
      game_piece = GamePiece.new("X")
      
      expect(game_piece).to be_a(GamePiece)
    end
  end
  
  describe "#type" do
    it "returns type of gamepiece" do
      game_piece = GamePiece.new("X")
      
      expect(game_piece.type).to eq("X")
    end
  end
end