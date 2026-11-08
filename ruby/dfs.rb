# frozen_string_literal: true

def dfs(graph, start)
  visited = Array.new(graph.length, false)
  order = []
  stack = [start]

  until stack.empty?
    u = stack.pop
    next if visited[u]

    visited[u] = true
    order << u
    graph[u].reverse_each do |v|
      stack << v unless visited[v]
    end
  end

  [visited, order]
end
