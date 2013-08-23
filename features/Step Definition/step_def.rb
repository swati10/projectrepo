#Another Git Upload
Given(/^a board like this$/) do |table|
  @board = table.raw
  print @board
end

When(/^player x plays in row (\d+), column (\d+)$/) do |row, col|
  @board[row.to_i][col.to_i] = "x"
  puts @board
end

Then(/^the board should look like this:$/) do |expected_table|
  expected_table.diff!(@board)
end


