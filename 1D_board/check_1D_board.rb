class Check1DBoard
  attr_accessor :board

  def initialize(board)
    @board = board
  end

  def message
    if winner == "O"
      "The winner is O"
    elsif winner == "X"
      "The winner is X"
    end
  end

  def winner
    find_by_row
  end

  def find_by_row
    if check_row(0, 2)
      board[0]
    elsif check_row(3, 5)
      board[3]
    elsif check_row(6, 8)
      board[6]
    end
  end

  def check_row(x, y)
    board[x..y].all? {|space| space == "O" || space == "X" }
  end


end