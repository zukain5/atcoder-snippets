# frozen_string_literal: true

def lower_bound(a, x)
  a.bsearch_index { |v| v >= x } || a.length
end

def upper_bound(a, x)
  a.bsearch_index { |v| v > x } || a.length
end
