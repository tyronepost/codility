class Task1
  def initialize
    @total_strokes = 0
  end

  def solution(arr)
    check_array_length(arr)
    (1..arr.max).each do |height|
      strokes = calculate_strokes(arr, height)
      @total_strokes += strokes
    end
    if @total_strokes > 1000000000
      return -1
    end
    @total_strokes
  end


  private
  def check_array_length(arr)
    raise_error "Array too small" if arr.length < 1
    raise_error "Array too large" if arr.length > 100000
  end

  def calculate_strokes(arr, height)
    stroke = Stroke.new
    arr.each do |element|
      check_element_size(element)
      toggle_brush(element, height, stroke)
    end
    stroke.count
  end

  def check_element_size(element)
    raise_error "element too small" if element < 1
    raise_error "element too large" if element > 1000000000
  end

  def toggle_brush(element, height, stroke)
    if element >= height
      stroke.brush_on
    else
      stroke.brush_off
    end
  end
end

class Stroke
  attr_reader :count
  def initialize
    @brush_state = false
    @count = 0
  end

  def brush_on
    unless @brush_state
      @brush_state = true
      @count += 1
    end
  end

  def brush_off
    @brush_state = false
  end
end
