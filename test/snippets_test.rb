# frozen_string_literal: true

require "minitest/autorun"
require_relative "../ruby/bfs"
require_relative "../ruby/grid_bfs"
require_relative "../ruby/dfs"
require_relative "../ruby/binary_search"
require_relative "../ruby/prefix_sum"
require_relative "../ruby/segment_tree"

class SnippetsTest < Minitest::Test
  def test_bfs
    graph = [[1, 2], [0, 3], [0], [1]]
    assert_equal [0, 1, 1, 2], bfs(graph, 0)
  end

  def test_grid_bfs
    grid = ["...", ".#.", "..."]
    assert_equal 4, grid_bfs(grid, 0, 0)[2][2]
  end

  def test_dfs
    graph = [[1, 2], [0, 3], [0], [1]]
    visited, order = dfs(graph, 0)
    assert_equal [true, true, true, true], visited
    assert_equal [0, 1, 3, 2], order
  end

  def test_binary_search
    values = [1, 3, 3, 7]
    assert_equal 1, lower_bound(values, 3)
    assert_equal 3, upper_bound(values, 3)
    assert_equal 4, lower_bound(values, 8)
  end

  def test_prefix_sum
    assert_equal [0, 2, 5, 10], prefix_sum([2, 3, 5])
  end

  def test_segment_tree
    seg = SegTree.new([5, 3, 7, 9, 1], Float::INFINITY) { |a, b| [a, b].min }
    assert_equal 3, seg.prod(1, 4)
    seg.set(2, 2)
    assert_equal 2, seg.prod(1, 4)
    assert_equal 1, seg.all_prod
    assert_equal 2, seg.get(2)
  end
end
