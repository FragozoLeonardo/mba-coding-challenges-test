# frozen_string_literal: true

# Exercise number 200 - https://leetcode.com/problems/number-of-islands/description/

def num_islands(grid)
  return 0 if grid.empty?

  rows = grid.length
  cols = grid[0].length
  islands = 0

  # helper DFS
  dfs = lambda do |r, c|
    return if r.negative? || c.negative? || r >= rows || c >= cols || grid[r][c] == '0'

    grid[r][c] = '0' # mark visited

    dfs.call(r + 1, c)
    dfs.call(r - 1, c)
    dfs.call(r, c + 1)
    dfs.call(r, c - 1)
  end

  (0...rows).each do |r|
    (0...cols).each do |c|
      if grid[r][c] == '1'
        islands += 1
        dfs.call(r, c)
      end
    end
  end

  islands
end
