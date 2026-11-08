# frozen_string_literal: true

def bfs(graph, start)
  dist = Array.new(graph.length, -1)
  dist[start] = 0
  queue = [start]
  head = 0

  while head < queue.length
    u = queue[head]
    head += 1

    graph[u].each do |v|
      next if dist[v] != -1

      dist[v] = dist[u] + 1
      queue << v
    end
  end

  dist
end
