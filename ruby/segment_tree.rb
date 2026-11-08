# frozen_string_literal: true

class SegTree
  def initialize(values, identity, &operation)
    @identity = identity
    @operation = operation
    @size = 1
    @size *= 2 while @size < values.length
    @data = Array.new(@size * 2, identity)

    values.each_with_index do |value, index|
      @data[@size + index] = value
    end

    (@size - 1).downto(1) do |index|
      update(index)
    end
  end

  def get(index)
    @data[@size + index]
  end

  def set(index, value)
    index += @size
    @data[index] = value

    while index > 1
      index /= 2
      update(index)
    end
  end

  # Returns the aggregate of the half-open interval [left, right).
  def prod(left, right)
    left += @size
    right += @size
    result_left = @identity
    result_right = @identity

    while left < right
      if left.odd?
        result_left = @operation.call(result_left, @data[left])
        left += 1
      end

      if right.odd?
        right -= 1
        result_right = @operation.call(@data[right], result_right)
      end

      left /= 2
      right /= 2
    end

    @operation.call(result_left, result_right)
  end

  def all_prod
    @data[1]
  end

  private

  def update(index)
    @data[index] = @operation.call(@data[index * 2], @data[index * 2 + 1])
  end
end
