# frozen_string_literal: true

def prefix_sum(a)
  prefix = [0]
  a.each { |value| prefix << prefix[-1] + value }
  prefix
end
