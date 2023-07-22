require "spec_helper"

RSpec.describe GamePiece do
  describe "#initialize" do
    it "can initialize" do
      player_game_piece = GamePiece.new("X")

      expect(player_game_piece).to be_a(GamePiece)
    end
  end

  describe "#readable attributes" do
    it "has readable attributes" do
      player_game_piece = GamePiece.new("X")

      expect(player_game_piece.token).to eq("X")
    end
  end
end