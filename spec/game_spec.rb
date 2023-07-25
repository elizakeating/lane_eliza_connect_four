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

      expect(game.game_board).to be_a(GameBoard)
      expect(game.player).to be_a(Player)
      expect(game.cpu).to be_a(CPU)
    end
  end

  describe "#welcome" do
    it "welcomes the player" do
      game = Game.new

      expect(game.welcome).to eq("Welcome to Connect 4! Enter p to Play. Enter q to Quit.")
    end
  end

  describe "#game_end" do
    it "ends after the player wins" do
      game = Game.new
      game.welcome

      expect(game.game_end("player")).to eq("Congratulations! You won the game!")
    end

    it "ends after the cpu wins" do
      game = Game.new
      game.welcome

      expect(game.game_end("cpu")).to eq("You're bad at this. You let a computer beat you when it wasn't even trying.")
    end

    it "ends when the board is full" do
      game = Game.new
      game.welcome

      expect(game.game_end("full")).to eq("The board is full, so no one wins. How did this happen? Do you understand the rules?")
    end
  end

  describe "#reset" do
    it "resets the board for a new game" do
      game = Game.new
      game.game_board.add_spaces

      game.reset

      expect(game.game_board.board).to eq([["A"], ["B"], ["C"], ["D"], ["E"], ["F"], ["G"]])
    end
  end
end