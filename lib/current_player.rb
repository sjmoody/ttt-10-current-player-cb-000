def current_player(board)
# take argument of game board and use turn count to determine next player
  if turn_count(board).even?
    "X"
  elsif turn_count(board).odd?
    "O"
  end
end

def turn_count(board)
# iterate over board, counting number of non empty spaces and return count
# if count is odd, "O" plays next
  counter = 0
  board.each do |position|
    if position == "X" || position == "O"
      counter += 1
    end
  end
  return counter
end
