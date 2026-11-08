# frozen_string_literal: true

def grid_bfs(grid, start_y, start_x)
  height = grid.length
  width = grid[0].length
  dist = Array.new(height) { Array.new(width, -1) }
  dist[start_y][start_x] = 0
  queue = [[start_y, start_x]]
  head = 0
  directions = [[0, -1], [0, 1], [-1, 0], [1, 0]]

  while head < queue.length
    y, x = queue[head]
    head += 1

    directions.each do |dy, dx|
      ny = y + dy
      nx = x + dx

      next unless (0...height).cover?(ny) && (0...width).cover?(nx)
      next if grid[ny][nx] == "#"
      next if dist[ny][nx] != -1

      dist[ny][nx] = dist[y][x] + 1
      queue << [ny, nx]
    end
  end

  dist
end
