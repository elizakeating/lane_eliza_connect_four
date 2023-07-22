require "spec_helper"

RSpec.describe Player do
  describe "#initialize" do
    it "can initialize" do
      player = Player.new("X")

      expect(player).to be_a(Player)
    end
  end

  describe "#readable attributes" do
    it "has readable attributes" do
      player = Player.new("X")

      expect(player.player_token).to eq("X")
    end
  end

  describe "#choose_column" do
    it "can choose a column from the game board" do
      game_board = GameBoard.new
      game_board.add_spaces
      player = Player.new("X")
      cpu = Cpu.new("O")

      player.choose_column("A")

      expect(game_board.column_1[6]).to eq("X")

      cpu.choose_column("A")

      expect(game_board.column_1[1]).to eq("O")
      expect(game_board.column_1[2]).to eq("X")

      player.choose_column("A")

      expect(game_board.column_1[1]).to eq("X")
      expect(game_board.column_1[2]).to eq("O")
      expect(game_board.column_1[3]).to eq("X")

      cpu.choose_column("B")

      expect(game_board.column_2[1]). to eq("O")
    end
  end
end