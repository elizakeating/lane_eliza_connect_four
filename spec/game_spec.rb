require "spec_helper"

RSpec.describe Game do
  describe "#initialize" do
    it "exists" do
      game = Game.new
      
      expect(game).to be_a(Game)
    end
  end
  
  describe "#readable_attributes" do
    it "had readable attributes" do
      game = Game.new

      expect(game.board).to be_a(GameBoard)
      expect(game.player).to be_a(Player)
      expect(game.cpu).to be_a(CPU)
    end
  end
end