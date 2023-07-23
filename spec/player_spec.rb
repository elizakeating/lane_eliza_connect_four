require "spec_helper"

RSpec.describe Player do
  describe "#initialize" do
    it "exists" do
      game_board = GameBoard.new
      game_board.add_spaces

      player = Player.new("X", game_board)
      
      expect(player).to be_a(Player)
    end
  end
    
    describe "#piece_type" do
      it "returns piece type of player" do
        game_board = GameBoard.new
        game_board.add_spaces

        player = Player.new("X", game_board)

        expect(player.piece_type).to eq("X")
      end
    end

    describe "#board" do
      it "returns board" do
        game_board = GameBoard.new
        game_board.add_spaces

        player = Player.new("X", game_board)

        expect(player.board).to be_a(GameBoard)
      end
    end
  
  describe "#choose_column" do
    it "allows player to choose a column to place their piece" do
      game_board = GameBoard.new
      game_board.add_spaces

      player = Player.new("X", game_board)
      
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
  
  describe "#is_full?" do
    it "returns false when the board is not full" do
      game_board = GameBoard.new
      game_board.add_spaces
      
      player = Player.new("X", game_board)
      
      expect(player.is_full?).to eq(false)
      
      player.choose_column("D")
      
      expect(player.is_full?).to eq(false)
      
      player.choose_column("D")
      player.choose_column("B")
      player.choose_column("C")
      player.choose_column("E")
      
      expect(player.is_full?).to eq(false)
    end
    
    it "returns true when the board is full" do
      game_board = GameBoard.new
      game_board.add_spaces
      
      player = Player.new("X", game_board)
      
      expect(player.is_full?).to eq(false)
      
      6.times do
        player.choose_column("A")
      end
      6.times do
        player.choose_column("B")
      end
      6.times do
        player.choose_column("C")
      end
      6.times do
        player.choose_column("D")
      end
      6.times do
        player.choose_column("E")
      end
      6.times do
        player.choose_column("F")
      end
      6.times do
        player.choose_column("G")
      end
      
      expect(player.is_full?).to eq(true)
    end
  end
  
  describe "#win?" do
    it "returns false by default" do
      game_board = GameBoard.new
      game_board.add_spaces
      
      player = Player.new("X", game_board)
      
      player.choose_column("D")
      player.choose_column("B")
      player.choose_column("C")
      player.choose_column("F")
      
      expect(player.win?).to eq(false)
    end
    
    it "returns true for horizontal win" do
      game_board = GameBoard.new
      game_board.add_spaces
      
      player = Player.new("X", game_board)
      
      player.choose_column("A")
      player.choose_column("B")
      player.choose_column("C")
      player.choose_column("D")
      
      expect(player.win?).to eq(true)
    end
    
    it "returns true for vertical win" do
      game_board = GameBoard.new
      game_board.add_spaces
      
      player = Player.new("X", game_board)
      
      player.choose_column("D")
      player.choose_column("D")
      player.choose_column("D")
      player.choose_column("D")
      
      expect(player.win?).to eq(true)
    end
    
    it "returns true for diagonal win" do
      game_board = GameBoard.new
      game_board.add_spaces
      
      player = Player.new("X", game_board)
      cpu = CPU.new("O", game_board)
      
      player.choose_column("C")
      player.choose_column("D")
      player.choose_column("D")
      player.choose_column("E")
      player.choose_column("E")
      player.choose_column("E")
      cpu.random_column("F")
      player.choose_column("F")
      player.choose_column("F")
      player.choose_column("F")

      expect(player.win?).to eq(true)
    end
  end

end