class Task2
  def self.solution(t)
    max_distinct_val_in_path(t, [], 0)
  end

  def self.max_distinct_val_in_path(t, distinct_values, current_max)
    arr = Array.new(distinct_values)
    arr << t.x unless arr.include?(t.x)
    current_max = max_distinct_val_in_path(t.l, arr, current_max) if t.l
    current_max = max_distinct_val_in_path(t.r, arr, current_max) if t.r
    current_max = arr.length if arr.length > current_max
    current_max
  end
end

class Tree
  attr_accessor :x, :l, :r
end