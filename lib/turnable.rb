module Turnable
  def is_full?
    find_spaces.nil?
  end

  def find_spaces
    board.board.find {
      |column| column.include? "."
    }
  end
end